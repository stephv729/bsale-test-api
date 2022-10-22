Rails.application.routes.draw do
  resources :products, only: %i[index show]
  resources :categories, only: %i[index]
  get "products_by_category", :to => "products#index_by_category"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
