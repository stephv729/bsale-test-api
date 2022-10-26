Rails.application.routes.draw do
  root to: "main#index"
  resources :products, only: %i[index show]
  resources :categories, only: %i[index]
  get "/categories/:id/products", to: "categories#products"
  get "/search", to: "products#search_by_name"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
