Rails.application.routes.draw do
  devise_for :users
  resources :tests
  resources :posts
  resources :users, only: [:index, :show, :edit, :update]
  
  root "application#hello"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end