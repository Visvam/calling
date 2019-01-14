Rails.application.routes.draw do
  root 'login#new'

  post 'login/new' => 'login#create'
  #get 'login/create' => 'dashboard#index'

  #get 'dashboard/index' => 'dashboard#index'
  
  get 'dashboard' => 'dashboard#index'
  post 'token/generate' => 'token#generate'
  post 'call/connect' => 'call#connect'

  resources :tickets, only: [:create]
  resources :login
end