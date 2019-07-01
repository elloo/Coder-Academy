Rails.application.routes.draw do
  devise_for :users
  resources :cars
  resources :profiles
  get 'home/page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#page'
end
