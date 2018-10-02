Rails.application.routes.draw do
  resources :years
  resources :firework_years
  resources :firework_details
  resources :fireworks
  devise_for :users

  root to: 'fireworks#index'
end
