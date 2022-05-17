Rails.application.routes.draw do
  resources :games
  # resources :snack_games
  # resources :player_games
  resources :snacks
  resources :players
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "players#index"
end
