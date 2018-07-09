Rails.application.routes.draw do


  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  root to: 'pages#home'

  # Read all teams
  get 'teams', to: 'teams#index'

  # Read one team
  get 'teams/:id', to: 'teams#show', as: :team

  # Create one team (2 Requests)
    # 1st request form
    # 2nd request params
  get 'teams/new', to: 'teams#new'
  post 'teams', to: 'teams#create'

  # update one team
  get 'teams/:id/edit', to: 'teams#edit'
  patch 'teams/:id', to: 'teams#update'

  # delete one team
  delete 'teams/:id', to: 'teams#destroy'


  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact


  # Read all bros
  get 'brothers', to: 'brothers#index'

  # Read one bro
  get 'brothers/:id', to: 'brothers#show', as: :brother

  # Create one bro
  get 'brothers/new', to: 'brothers/#new'
  post 'brothers', to: 'brothers#create'

  # Update one bro
  get 'brothers/:id/edit', to: 'brothers#edit'
  patch 'brothers/:id', to: "brothers#update"

  # Delete one bro
  get 'brothers/:id', to: 'brothers#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
