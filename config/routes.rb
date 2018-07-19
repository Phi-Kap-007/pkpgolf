Rails.application.routes.draw do

  get 'leaderboards/show'
  get 'leaderboards/paginate'
  get 'leaderboards/entry_service'
  devise_for :users
  # Uncomment line below to simplify routing: taslk to Martin first. Check CRUD video at 31 min mark
  #resources :teams

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  #root to: 'pages#home'
  root to: 'teams#index'

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

  # Delete one team
  delete 'teams/:id', to: 'teams#destroy'

  # Show all teams in descending order
  get 'teams', to: 'teams#leaderboard', as: :leaderboard

  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact


  # Read all bros
  get 'brothers', to: 'brothers#index'

  # Show individual brothers' scores
  get 'brothers/:id', to: 'brothers#show', as: :brother




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
