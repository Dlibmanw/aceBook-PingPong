Rails.application.routes.draw do
  devise_for :users
  resources :photos
  resources :posts
  resources :users
  root 'posts#index'
end
