Rails.application.routes.draw do
  root to: 'landing#index'
  resources :groups
  resources :themes
  resources :natures
  resources :members
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
