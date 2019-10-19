Rails.application.routes.draw do
  resources :tournaments
  resources :games
  resources :teams
  resources :players
  devise_for :users, :controllers => { registrations: 'registration' }
  root 'tournaments#index'

  post '/teams/:id/join_team', to: 'teams#join_team', as: 'join_team'
  post '/teams/:id/leave_team', to: 'teams#leave_team', as: 'leave_team'
end
