Rails.application.routes.draw do
    root 'cars#create'
    get 'cars/create'
    get 'cars/index' => 'cars#index'
    get 'create_car' => 'cars#create'
    get 'simulators/index' => 'simulators#simulate'
    get 'accelerate_car' => 'cars#accelerate_car'
    get 'brake_car' => 'cars#brake_car'
    get 'change_lights' => 'cars#change_lights'
    get 'change_ebrake' => 'cars#change_ebrake'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
