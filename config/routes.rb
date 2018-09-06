Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  #resources :teams

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'gallery', to: 'gallery#contact', as: :gallery

  # CRUD routes for teams and users
  resources :teams, :users, :entries
  get 'leaderboard', to: 'leaderboards#show', as: :leaderboard


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
