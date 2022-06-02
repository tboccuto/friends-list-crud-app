Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :friends
  #get 'home/index'
  #each page need controller ie in terminal type [rails g controller home index]
  #to see all routes run [rails routes]
  root 'home#index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
