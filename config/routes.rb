Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/show'
  get 'pages/index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 devise_for :users, :controllers => {:registrations => 'users/registrations', :session => 'users/sessions' }

 devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

end
