Rails.application.routes.draw do
  devise_for :users 
  resources :movies, :favorites
  root to: 'movies#index'
  post '/favorites', to: 'favorites#create', as: 'add_favorite'

end
