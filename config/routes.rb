Rails.application.routes.draw do
  resources :firework_years
  resources :firework_details, only:[:new, :edit, :create, :update]
  resources :fireworks
  devise_for :users

  root to: 'fireworks#index'
end
