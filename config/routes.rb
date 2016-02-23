Rails.application.routes.draw do

  root 'users#index'

  #routes for users
  get 'users/:id' => 'users#show'
  post '/users' => 'users#create'
  
  #routes for sessions 
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  #routes for the tasks
  post '/tasks' => 'tasks#create'
  patch '/tasks/:id' => 'tasks#update'
  delete '/tasks/:id' => 'tasks#destroy'
end
