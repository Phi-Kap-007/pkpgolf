Rails.application.routes.draw do

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'teams', to: 'teams#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
