Rails.application.routes.draw do
  resources :participants
  resources :snacks
  resources :games
  root "participants#index"
end
