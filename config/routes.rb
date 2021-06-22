# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: %i[index show]
  resources :authors, only: %i[index show]
  resources :quotes, only: %i[index show]
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
