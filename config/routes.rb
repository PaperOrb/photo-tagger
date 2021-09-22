Rails.application.routes.draw do
  resources :character_locations
  root "images#index"
  resources :images
end
