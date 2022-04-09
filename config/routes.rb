Rails.application.routes.draw do
  resources :participants
  resources :snacks
  resource :games
  root "participants#index"
end
