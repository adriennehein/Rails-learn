Rails.application.routes.draw do
    get '/game/new_game' => 'games#reset'
    get 'game' => 'games#play'
    get '/game/game' => 'games#play'

end
