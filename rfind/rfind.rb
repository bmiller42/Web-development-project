#!/usr/bin/env ruby

files=`find .`
printf("Files with names that matches <%s>\n", ARGV[0])
files.split.each {|file|
    origfile = file
    file.downcase!
    if (file=~/(?=.*#{ARGV[0]})^.*(\.rb$|\.erb$|\.js$|\.css$|\.html$|\.yml$|\.txt$).*/)
        printf("  %s\n", origfile)
    end
}

puts "**************************************************"

printf("Files with the content that matches <%s>\n", ARGV[0])
files.split.sort!.each {|file| 
    linenum = 1
    if (file=~/\.rb$|\.erb$|\.js$|\.css$|\.html$|\.yml$|\.txt$/)
        printedname = false
        filedata = File.open(file)
		filedata.each {|line|
            origline = line.dup  #save copy of original line
            line.downcase! #change string to downcase for comparison
			if (line=~/(#{ARGV[0]})/)
                line.strip!  #delete leading and trailing spaces
                if printedname == false #if the filename hasnt been printed
                    printf("%s\n", file) #print name of the file
                    printedname = true
                end
                printf("  %d:%s", linenum, origline)
            end
            linenum += 1
        }
        if printedname == true #if the filename was printed, separate it
            puts "--------------------------------------------------"
        end
    end
}


