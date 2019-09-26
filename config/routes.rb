Rails.application.routes.draw do
  resources :nta_names
  resources :stewards
  resources :trees
  resources :users

  post '/login', to: 'auth#login'
  post '/signup',to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/friends', to: 'users#friends'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
