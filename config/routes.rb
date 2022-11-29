Rails.application.routes.draw do
  root to: 'cinemas#index'
  resources :cinemas, only: [:index, :new, :create, :destroy, :edit]
end
