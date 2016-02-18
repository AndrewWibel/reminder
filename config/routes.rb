Rails.application.routes.draw do

  root 'users#index'

  #routes for users
  get 'users/:id' => 'users#show'
  post '/users' => 'users#create'
  
  #routes for sessions 
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'
  
end
