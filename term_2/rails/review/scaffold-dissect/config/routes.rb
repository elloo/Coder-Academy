Rails.application.routes.draw do
  get 'book/page'
  get 'contact/page'
  root 'welcome#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
