Rails.application.routes.draw do
  resources :profiles

  get 'profiles/new', to: "profiles#new". as "profile_new"
  post '/profiles', to 'profiles#create'
  post '/profiles/:id', to 'profiles#show'
  put '/profiles', to 'profiles#edit', as: "profile_edit"
  post '/profiles/:id', to 'profiles#upate'
  post '/profiles/:id', to 'profiles#destroy'

  get 'tweet/page'
  get 'book/page'
  get 'contact/page'

  # get '/contact/page', to:"contact#page", as: "contact_page"
  root 'welcome#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
