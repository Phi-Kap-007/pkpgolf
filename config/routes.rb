Rails.application.routes.draw do

  devise_for :users
  # Uncomment line below to simplify routing: talk to Martin first. Check CRUD video at 31 min mark
  #resources :teams

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  #root to: 'pages#home'
  root to: 'teams#index'

  # CRUD routes for teams and members
  resources :teams, :members, :entries
  get 'leaderboards/show'


  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
