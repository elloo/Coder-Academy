Rails.application.routes.draw do
  root 'welcome#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/page'

  post '/home/data', to: 'home#data'

  post '/home/create', to: 'home#create'

  put '/profiles/:id', to: 'profiles#show'
end
