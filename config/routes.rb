Rails.application.routes.draw do
  resources :scores, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#menu'
  get '/game', to: 'game#start_game'
  get '/game_over', to: 'game#game_over'
  get '/configuration', to: 'application#settings'
  get '/answers/:id', to: 'answers#show', as: 'answer'
  get '/play_audio', to: 'audio#play'
  get '/next_round', to: 'game#next_round', as: 'next_round'
end
