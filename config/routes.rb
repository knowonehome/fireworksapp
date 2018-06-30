Rails.application.routes.draw do
  resources :firework_years
  resources :firework_details
  resources :fireworks do
    resources :firework_years do
      resources :firework_details
    end
  end
  devise_for :users

  root to: 'fireworks#index'
end
