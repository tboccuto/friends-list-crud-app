Rails.application.routes.draw do
  #get 'home/index'
  #each page need controller ie in terminal type [rails g controller home index]
  #to see all routes run [rails routes]
  get 'home/about'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
