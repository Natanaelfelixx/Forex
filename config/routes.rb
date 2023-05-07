Rails.application.routes.draw do
  resources :coins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "coins#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
