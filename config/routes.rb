Rails.application.routes.draw do
  resources :flats

  devise_for :users

  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"
  get "services", to: "pages#services"
  get "about", to: "pages#about"



  resources :vehicules

  resources :commentaires, only: [:index, :new, :create, :edit, :update, :destroy]

  resources :pieces

  resources :members, only: [:index, :new, :create, :edit, :update, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
