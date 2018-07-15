Rails.application.routes.draw do

  devise_for :users
  # Uncomment line below to simplify routing: taslk to Martin first. Check CRUD video at 31 min mark
  #resources :teams

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  root to: 'pages#home'

  # Read all teams
  get 'teams', to: 'teams#index'

    # 1st request form
    # 2nd request params
  get 'teams/new', to: 'teams#new', as: :new_team
  post 'teams', to: 'teams#create'

  # Read one team
  get 'teams/:id', to: 'teams#show', as: :team


  # update one team
  get 'teams/:id/edit', to: 'teams#edit', as: :edit_team
  patch 'teams/:id', to: 'teams#update'

  # delete one team
  delete 'teams/:id', to: 'teams#destroy'


  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact


  # # Read all bros
  get 'brothers', to: 'brothers#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
