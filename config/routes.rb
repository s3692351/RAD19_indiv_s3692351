# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'course', to: 'courses#index'
  get 'signup', to: 'users#index'
  resources :categories
  resources :courses
end
