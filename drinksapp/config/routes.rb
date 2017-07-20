Rails.application.routes.draw do
  devise_for :users
  root 'landingpage#index'
  resources :drinks do
    resources :comments
  end
  # match '/users/:id', to: 'users#show', via: 'get'
end
