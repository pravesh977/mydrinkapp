Rails.application.routes.draw do
  root 'landingpage#index'
  resources :drinks
end
