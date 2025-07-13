Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    resources :transactions, only: [:index, :create, :new]
  end
  root to: 'groups#index'
end