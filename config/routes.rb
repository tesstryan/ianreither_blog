IanreitherBlog::Application.routes.draw do
  
  root to: 'posts#index'

  #Routes for Signing In and Out: 
  get '/login' => 'sessions#new'
  post '/sessions', controller:'sessions', action: 'create'
  get '/logout' => 'sessions#destroy'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'

  # Routes for the Contact resource:
  # CREATE
  get '/contacts/new', controller: 'contacts', action: 'new', as: 'new_contact'
  post '/contacts', controller: 'contacts', action: 'create', as: 'contacts'

  # READ
  get '/contacts', controller: 'contacts', action: 'index'
  get '/contacts/:id', controller: 'contacts', action: 'show', as: 'contact'

  # UPDATE
  get '/contacts/:id/edit', controller: 'contacts', action: 'edit', as: 'edit_contact'
  patch '/contacts/:id', controller: 'contacts', action: 'update'

  # DELETE
  delete '/contacts/:id', controller: 'contacts', action: 'destroy'
  #------------------------------

  # Routes for the Characteristic resource:
  # CREATE
  get '/characteristics/new', controller: 'characteristics', action: 'new', as: 'new_characteristic'
  post '/characteristics', controller: 'characteristics', action: 'create', as: 'characteristics'

  # READ
  get '/characteristics', controller: 'characteristics', action: 'index'
  get '/characteristics/:id', controller: 'characteristics', action: 'show', as: 'characteristic'

  # UPDATE
  get '/characteristics/:id/edit', controller: 'characteristics', action: 'edit', as: 'edit_characteristic'
  patch '/characteristics/:id', controller: 'characteristics', action: 'update'

  # DELETE
  delete '/characteristics/:id', controller: 'characteristics', action: 'destroy'
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'
  post '/movies', controller: 'movies', action: 'create', as: 'movies'

  # READ
  get '/movies', controller: 'movies', action: 'index'
  get '/movies/:id', controller: 'movies', action: 'show', as: 'movie'

  # UPDATE
  get '/movies/:id/edit', controller: 'movies', action: 'edit', as: 'edit_movie'
  patch '/movies/:id', controller: 'movies', action: 'update'

  # DELETE
  delete '/movies/:id', controller: 'movies', action: 'destroy'
  #------------------------------

  # Routes for the Song resource:
  # CREATE
  get '/songs/new', controller: 'songs', action: 'new', as: 'new_song'
  post '/songs', controller: 'songs', action: 'create', as: 'songs'

  # READ
  get '/songs', controller: 'songs', action: 'index'
  get '/songs/:id', controller: 'songs', action: 'show', as: 'song'

  # UPDATE
  get '/songs/:id/edit', controller: 'songs', action: 'edit', as: 'edit_song'
  patch '/songs/:id', controller: 'songs', action: 'update'

  # DELETE
  delete '/songs/:id', controller: 'songs', action: 'destroy'
  #------------------------------

  # Routes for the Book resource:
  # CREATE
  get '/books/new', controller: 'books', action: 'new', as: 'new_book'
  post '/books', controller: 'books', action: 'create', as: 'books'

  # READ
  get '/books', controller: 'books', action: 'index'
  get '/books/:id', controller: 'books', action: 'show', as: 'book'

  # UPDATE
  get '/books/:id/edit', controller: 'books', action: 'edit', as: 'edit_book'
  patch '/books/:id', controller: 'books', action: 'update'

  # DELETE
  delete '/books/:id', controller: 'books', action: 'destroy'
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get '/posts/new', controller: 'posts', action: 'new', as: 'new_post'
  post '/posts', controller: 'posts', action: 'create', as: 'posts'

  # READ
  get '/posts', controller: 'posts', action: 'index'
  get '/posts/:id', controller: 'posts', action: 'show', as: 'post'

  # UPDATE
  get '/posts/:id/edit', controller: 'posts', action: 'edit', as: 'edit_post'
  patch '/posts/:id', controller: 'posts', action: 'update'

  # DELETE
  delete '/posts/:id', controller: 'posts', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
