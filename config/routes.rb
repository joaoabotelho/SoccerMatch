Rails.application.routes.draw do
  resources :tournaments
  resources :games
  resources :teams
  resources :players
  post '/teams/:id/join_team', to: 'teams#join_team', as: 'join_team'
  devise_for :users, :controllers => { registrations: 'registration' }
  root 'tournaments#index'
end
