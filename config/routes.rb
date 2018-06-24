Rails.application.routes.draw do
  resources :firework_years
  resources :firework_details
  resources :fireworks do
    :firework_years
  end
  devise_for :users

  root to: 'fireworks#index'
end
