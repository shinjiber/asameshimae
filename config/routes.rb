# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'toppages#index'

  resources :items
  resources :users
  resources :admins
end
