class HomeController < ApplicationController

    load "#{Rails.root}/lib/ladder.rb"
    load "#{Rails.root}/lib/words4.rb"

    def index
         
    end

    def show
        steps = Array.new
        steps.push params[:start]
        if params[:step1] != ""
            steps.push params[:step1]
        end
        if params[:step2] != ""
            steps.push params[:step2]
        end
        if params[:step3] != ""
            steps.push params[:step3]
        end
        if params[:step4] != ""
            steps.push params[:step4]
        end
        if params[:step5] != ""
            steps.push params[:step5]
        end
        steps.push params[:goal]
        @start = params[:start]
        @goal = params[:goal]
        if (legal steps)
            @result = "Correct, You Win!"
        else
            @result = "Incorrect, You Lose"
        end
    end
end
