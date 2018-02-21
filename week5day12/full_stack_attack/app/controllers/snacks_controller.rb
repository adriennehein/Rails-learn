class SnacksController < ApplicationController
    def numberGen
        @name = session[:name]
        session[:counter] = 0
        @secretnum = rand(100).to_i
        cookies[:number] = @secretnum
        render "snacks.html.erb"
    end

    def match
        @counter = session[:counter]
        @guess = params[:number].to_i
        @win_status = ""

        if @guess == cookies[:number].to_i
            @win_status = "You're so right!"
        elsif @guess > cookies[:number].to_i
            @win_status = "Your number is too effin high, wtf!!"
            @counter = @counter + 1
        elsif @guess < cookies[:number].to_i
            @win_status = "Aim higher. Shoot for the stars!!"
            @counter = @counter + 1
        end
        if @counter >= 5
            @win_status = "Game overrrr."
        end
        session[:counter] = @counter
        render "snacks.html.erb"
    end

    def getName
        session[:name] = params[:name]
        render "snacks.html.erb"
    end
end
