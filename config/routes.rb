Rails.application.routes.draw do
  root "books#index"

  resources :books
  resources :rents, only: [ :index, :create ]
  devise_for :users

  patch '/rents/:id/return', to: 'rents#return', as: 'return_book'
end
