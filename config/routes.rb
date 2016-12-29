Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root'static_pages#index'
  resources :business_listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :user do
    resources :business_listings, only: :index
  end
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
    end
  end
  resources :messages, only: [:new, :create]
end
