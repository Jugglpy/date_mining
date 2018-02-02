Rails.application.routes.draw do
  resources :places, only: [:new, :create, :show]
  resources :plans
  root :to => 'plans#index'
end
