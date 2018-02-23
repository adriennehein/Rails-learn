class UsersController < ApplicationController
    def register

    end

    def new
        @user = User.new(params)
        session[:user] = @user.to_yaml
    end

    def check_credentials
        @user = YAML.load(session[:user])
        @username = @user.username
        @password = @user.password
        @userlog = params[:userlog]
        @passlog = params[:passlog]
        if @userlog == @username && @passlog == @password
            render 'login'
        else
            flash.now[:error] = "Your credentials are not valid"
            render 'new'
        end

    end

    def register_new
        @user = YAML.load(session[:user])
        @username = @user.username
        @password = @user.password
        if @username != params[:username] || params[:username].strip.empty?
            flash[:invalid] = "Username available! Please register now."
            render 'register'
        else
            flash[:invalid] = "This username is already in use"
            render 'new'
        end
    end

    def logout
        flash[:logout] = "Successful Log Out!"
        render 'new'
    end


end
