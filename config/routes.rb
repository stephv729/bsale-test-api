Rails.application.routes.draw do
  root :to => "main#index"
  resources :products, only: %i[index show]
  resources :categories, only: %i[index]
  get "/categories/:id/products", :to => "categories#products"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
