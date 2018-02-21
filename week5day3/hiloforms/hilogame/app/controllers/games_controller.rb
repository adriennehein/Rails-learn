class GamesController < ApplicationController
    def reset
        @secretnum = rand(100).to_i
        cookies[:number] = @secretnum
        render "play.html.erb"

    end

    def play

        @win_status = ""
        @guess = params[:guess].to_i
        if @guess == cookies[:number].to_i
            @win_status = "You win."
        elsif @guess > cookies[:number].to_i
            @win_status = "Too high."
        elsif @guess < cookies[:number].to_i
            @win_status = "Too low."
        end
        render "play.html.erb"

    end
end
