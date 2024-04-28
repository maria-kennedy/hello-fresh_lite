Rails.application.routes.draw do
  get 'home/index'
  resources :add_ons
  resources :meals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
  # get "home", to: "home#index"
end
