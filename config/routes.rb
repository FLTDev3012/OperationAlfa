Rails.application.routes.draw do

  devise_for :users

  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"


  resources :vehicules

  resources :commentaires, only: [:index, :new, :create, :edit, :update, :destroy]

  resources :pieces

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
