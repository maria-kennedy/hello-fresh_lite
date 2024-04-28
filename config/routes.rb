Rails.application.routes.draw do
  get 'home/index'
  get 'home/links'
  resources :add_ons
  resources :meals
  root "home#index"

end
