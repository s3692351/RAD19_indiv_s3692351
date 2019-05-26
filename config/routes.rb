# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'signup', to: 'users#new'
  get 'contacts', to: 'contact#index'
  post 'contacts', to: 'contact#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :locations, except: :index
  resources :users
  resources :categories, except: :index
  resources :courses do
    member do
      post 'upvote'
      post 'downvote'
    end
  end
end
