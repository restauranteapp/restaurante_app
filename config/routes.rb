Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  namespace :dashboard do
    namespace :admin do
      resources :categories, only: [:index]
      resources :items, only: [:index]
    end
  end
end
