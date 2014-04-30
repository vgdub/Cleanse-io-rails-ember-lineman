Rails.application.routes.draw do
  resources :cleanses
  resources :users

  root to: "embers#index"
end
