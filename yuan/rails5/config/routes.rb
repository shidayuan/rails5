Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups

  namespace :account do
    resources :groups
  end
end
