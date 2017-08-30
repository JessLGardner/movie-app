Rails.application.routes.draw do
  devise_for :users 
  resources :movies, :favorites
  root to: 'movies#index'
end
