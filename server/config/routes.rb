Rails.application.routes.draw do
  namespace :api do
    resources :cleanses
    resources :users
  end

  root to: 'embers#index'
  get '*ember', to: 'home#index'
end
