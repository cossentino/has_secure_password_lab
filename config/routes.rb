Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/signup', to: 'users#new'
  post '/users/signup', to: 'users#create'
  get '/users/login', to: 'users#login'
  post '/users/login', to: 'sessions#create'
  

  root 'users#welcome'
end
