Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "heros#index"
  resources :heros
  resources :weapons
  resources :powers
  resources :hero_attributes, only: [:create, :destroy]
end
