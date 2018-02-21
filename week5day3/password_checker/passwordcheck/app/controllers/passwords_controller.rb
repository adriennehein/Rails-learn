class PasswordsController < ApplicationController
    def check
        cookies[:username] = params[:username] unless params[:username].nil?
        cookies[:password] = params[:password] unless params[:password].nil?
        @username = cookies[:username]
        @password = cookies[:password]

        @un_valid = ""
        @pass_valid = ""

        if @username != nil && @password != nil
            @username.length < 6 ? @un_valid = "Valid" : @un_valid = "Invalid"
            @password.include?("$") ? @pass_valid = "Valid" : @pass_valid = "Invalid"
        end
        render "check.html.erb"

    end
end
