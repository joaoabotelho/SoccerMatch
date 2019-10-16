Rails.application.routes.draw do
  resources :tournaments
  resources :games
  resources :teams
  resources :players
  devise_for :users, :controllers => { registrations: 'registration' }
  root 'tournaments#index'
end
