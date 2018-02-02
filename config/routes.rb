Rails.application.routes.draw do
  resources :places, only: [:new, :create]
  resources :plans
  root :to => 'plans#index'
end
