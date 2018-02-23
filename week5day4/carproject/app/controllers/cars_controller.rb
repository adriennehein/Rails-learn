
class CarsController < ApplicationController
    def index
    end

    def create
        if !params.has_key?(:name) || params[:name].strip.empty? ||
             !params.has_key?(:year) || params[:year].strip.empty?
             @car_status = "No car exists."
             render "create.html.erb"
        else
            @car = Car.new(params[:name], params[:year])
            session[:car] = @car.to_yaml
            render "index"
        end

    end

    def accelerate_car
        @car = YAML.load(session[:car])
        car = @car.accelerate
        session[:car] = @car.to_yaml
        render "index"
    end

    def brake_car
        @car = YAML.load(session[:car])

        if @car.speed.to_i > 7
            car = @car.brake
            session[:car] = @car.to_yaml
            render "index"
        elsif @car.speed < 7
            @car.speed = 0
            session[:car] = @car.to_yaml
            render "index"
        else
            render "index"
        end
    end

    def change_lights
        @car = YAML.load(session[:car])
        car = @car.lights_change
        session[:car] = @car.to_yaml
        render "index"
    end

    def change_ebrake
        @car = YAML.load(session[:car])
        car = @car.brake_change
        session[:car] = @car.to_yaml
        render "index"
    end

end


#
# def register
#     if !params.has_key?(:given) || params[:given].strip.empty? ||
#        !params.has_key?(:family) || params[:family].strip.empty?
#       @name = "Name missing"
#       render "register.html.erb"
#     else
#       # create a user object with information submitted
#       user = User.new(params[:given], params[:family])
#       # save user object in session, so it can be accessed in the game
#       session[:user] = user.to_yaml
#       # rediect to the game play page
#       redirect_to "/games/play"
#     end
