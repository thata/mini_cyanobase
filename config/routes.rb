Rails.application.routes.draw do
  resources :genes
  resources :organisms
  resources :search

  root 'organisms#index'
end
