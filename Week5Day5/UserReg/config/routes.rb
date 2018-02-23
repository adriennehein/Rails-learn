Rails.application.routes.draw do
  root 'users#register'
  post '/newuser' => 'users#new'
  get '/check_credentials' => 'users#check_credentials'
  get 'users/login'
  get '/register_new' => 'users#register_new'
  get '/logout' => 'users#logout'
end
