IanreitherBlog::Application.routes.draw do

  root to: 'posts#index'

  #Routes for Signing In and Out:
  get '/login' => 'sessions#new'
  post '/sessions', controller:'sessions', action: 'create'
  get '/logout' => 'sessions#destroy'

  resources :weathers
  resources :quotes
  resources :articles
  resources :users
  resources :contacts
  resources :characteristics
  resources :movies
  resources :songs
  resources :books
  resources :posts

end
