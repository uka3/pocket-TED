Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'messages/index'
  resources :articles
  devise_for :users
  
  root 'pages#index'
  get 'pages/index'
  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
