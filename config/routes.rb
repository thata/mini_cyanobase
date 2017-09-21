Rails.application.routes.draw do
  resources :genes
  resources :organisms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'organisms#index'
end
