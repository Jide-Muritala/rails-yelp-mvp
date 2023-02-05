Rails.application.routes.draw do
  get 'reviews/new'
  get 'review/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "restaurants", to: "restaurants#index", as: :retaurants
  get "restaurants/new", to: "restaurants#new"
  patch "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  resources :restaurants do
    resources :reviews, only: [:new]
  end
end
