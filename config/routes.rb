Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :participants
  resources :games
  resources :snacks

  # Defines the root path route ("/")
  root "participants#index"
end
