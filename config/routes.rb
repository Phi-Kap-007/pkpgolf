Rails.application.routes.draw do

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name

  root to: 'pages#home'

  # Read all teams
  get 'teams', to: 'teams#index'

  # Read one team
  get 'teams/:id', to: 'teams#show', as: :team

  # create one team (2 Requests)
    # 1st request form
    # 2nd request params
  get 'teams/new', to: 'teams#new'
  post 'teams', to: 'teams#create'

  # update one team
  get 'teams/:id/edit', to: 'teams#edit'
  patch "teams/:id", to: 'teams#update'

  # delete one team
  delete 'teams/:id', to: 'teams#destroy'


  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
