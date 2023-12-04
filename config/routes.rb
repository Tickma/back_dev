Rails.application.routes.draw do
  get 'user', to: 'users#show'
  post 'user', to: 'users#addUser'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
