Rails.application.routes.draw do
  resources :fireworks
  devise_for :users
  root to: "fireworks#index"
end
