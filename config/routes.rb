# frozen_string_literal: true

Rails.application.routes.draw do
  get 'items/index'
  root to: 'toppages#index'
end
