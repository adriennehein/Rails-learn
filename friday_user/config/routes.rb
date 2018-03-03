Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  post 'users/register' => 'users#register'
  get 'users/login' => 'users#login'

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
