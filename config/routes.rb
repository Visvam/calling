Rails.application.routes.draw do
  root 'sessions#new'

  # get 'login/new' => 'login#signup'
  # post 'login/new' => 'login#save'
   post 'login/signup' => 'login#create'
  get 'login/save' => 'home#index'
  post 'login/save' => 'home#index' 


  get 'sessions/new'
  #get    'login/new' => 'sessions#new'
  post   'sessions/new' => 'sessions#create'
  get 'sessions/create' => 'dashboard#index'
  delete '/logout',  to: 'sessions#destroy'

  #get 'dashboard/index' => 'dashboard#index'
  
  get 'dashboard' => 'dashboard#index'
  post 'token/generate' => 'token#generate'
  post 'call/connect' => 'call#connect'

  resources :tickets, only: [:create]
  resources :login
  resources :home
end