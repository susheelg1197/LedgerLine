Rails.application.routes.draw do
  resources :groups do
    resources :transactions, only: [:index, :create, :new]
  end
end