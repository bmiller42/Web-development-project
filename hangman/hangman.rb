#!/usr/bin/env ruby

$wordsarray = Array.new
$alreadyguessed = Array.new
File.open("words", 'r') do |file|
    file.each_line{|line| $wordsarray.push(line.chomp)}
end
guesses = 10

def eliminate guess
    $wordsarray.reject! {|word| word.include? (guess)}
    if $wordsarray.size == 0
        $wordsarray = $copyarray #if all words are removed reset array
    end
end
def ischar guess
    if /[a-z]/.match(guess)
        return true
    else 
        return false
    end
end
def checkarray
    i = 0
    correct = false
    $answer.each {|letter| 
        if letter == $guess
            $answerarray[i] = $guess
            correct = true
        end
        i+=1
    }
    return correct
end
printf("Please enter a word size between 5 and 20 characters\n")
size = gets
if size.to_i < 5
    size = 5
elsif size.to_i > 20
    size = 20
end
$answerarray = Array.new(size.to_i, "_")
done = false
while guesses != 0 and !done do
    printf("Enter a letter: \n")
    $guess = gets.chomp
    $guess = $guess[0]
    if !(ischar $guess)
        printf("Only enter lowercase letters a-z (%d guesses left)\n", guesses)
    elsif $answer #if the program has chosen a word
        if $alreadyguessed.include?($guess)
            printf("You already guesed that letter (%d guesses left)\n",guesses)
        elsif checkarray == false
            guesses = guesses - 1
            printf("Wrong, guess again (%d guesses left)\n", guesses)
        elsif checkarray == true
            printf("Correct (%d guesses left)\n", guesses) 
        end
        if $answer.to_s == $answerarray.to_s
            printf("You guessed the word, well done\n");
            done = true
        end
    else
        $copyarray = $wordsarray.dup
        eliminate $guess
        if $alreadyguessed.include?($guess)
            printf("You already guesed that letter (%d guesses left)\n",guesses)
        elsif $wordsarray == $copyarray #no words were removed
            $answer = $wordsarray[0] #pick top word as the answer
            $ans = $answer.dup
            $answer = $answer.split(//) #turn the word into an array
            checkarray
        else
            guesses = guesses - 1
            printf("Wrong, guess again (%d guesses left)\n", guesses)
        end
    end 
    $alreadyguessed.push($guess)
    $answerarray.each {|letter| printf("%s ", letter)}
    puts 
end
if guesses == 0
    if $ans
        printf("Correct answer: %s\n", $ans)
    end
    puts "You used all your guesses, try again"
end

