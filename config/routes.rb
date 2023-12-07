Rails.application.routes.draw do
  # user routes
  get 'user', to: 'users#show'
  post 'user', to: 'users#addUser'

  # event routes
  get 'event', to: 'events#show'
  post 'event', to: 'events#addEvent'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
