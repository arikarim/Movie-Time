Rails.application.routes.draw do
  resources :articles
  devise_for :users
  resources :categories, only: %i[new create]
  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
