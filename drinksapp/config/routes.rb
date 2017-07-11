Rails.application.routes.draw do
  root 'landingpage#index'
  resources :drinks do
    resources :comments
  end
end
