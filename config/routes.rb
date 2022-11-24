Rails.application.routes.draw do
  resources :cinemas, only: :index
end
