Rails.application.routes.draw do
 
  resources :sessions
  resources :users
  resources :companies

  get 'welcome/index'
  root 'welcome#index'
  
  # Routes for authentication
  
  match "login" => 'sessions#new', via: :get
  match "logout" => 'sessions#destroy', via: :get
  match "signup" => 'companies#new', via: :get
end
