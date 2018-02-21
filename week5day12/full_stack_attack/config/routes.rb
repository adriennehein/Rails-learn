Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'snacks#coming_soon'
  get '/snacks' => 'snacks#numberGen'
  get '/snacks/new_game' => 'snacks#numberGen'
  get 'snacks/:name'=> 'snacks#getName'
  get '/snacks/:number' => 'snacks#match'
end
