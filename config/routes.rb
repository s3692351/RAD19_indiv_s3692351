# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'signup', to: 'users#new'
  get 'contacts', to: 'contact#index'
  post 'contacts', to:'contact#create'
  resources :users
  resources :categories, except: :index
  resources :courses
end
