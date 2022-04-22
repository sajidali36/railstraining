Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :customers
  resources :doctors
  namespace :auth do
    resources :students
  end
  get 'users/about'
  root 'users#index'
  resources :users
  resources :homes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
