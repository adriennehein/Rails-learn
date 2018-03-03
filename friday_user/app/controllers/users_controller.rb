class UsersController < ApplicationController
  def index
  end

    def register
        @user = User.new
        @user.name = params[:name]
        @user.address = params[:address]
        @user.city = params[:city]
        @user.state = params[:state]
        @user.zipcode = params[:zipcode]
        @user.country = params[:country]
        @user.email = params[:email]
        @user.username = params[:username]
        @user.password = params[:password]
        if @user.save
            cookies[:user_id] = @user
        end
        @check = @user.username
    end

    def login
        @user1 = User.find_by(username: params[:username])
        if @user1 == nil
            flash[:wrong] = "User does not exist"
            @check = ""
            render 'register'
        elsif @user1.password == params[:password]
            @check = @user1.username
            render 'login'
        else
            flash[:wrong] = "Wrong password"
            @check = @user1.username
            render 'register'
        end
    end


end
