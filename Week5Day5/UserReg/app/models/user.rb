class User
    attr_accessor :name, :address, :city, :state, :zipcode, :country, :email,
    :username, :password
    def initialize (params)
        # session[:username] = params[:username]
        @username = params[:username]
        # session[:password] = params[:password]
        @password = params[:password]
        @name = params[:name]
        @address = params[:address]
        @city = params[:city]
        @state = params[:state]
        @zipcode = params[:zipcode]
        @country = params[:country]
        @email = params[:email]
    end
end
