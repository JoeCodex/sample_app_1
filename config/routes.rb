Rails.application.routes.draw do

  root 'static_pages#home'
  get 'help'    => 'static_pages#help'      # help_path (the first section)
  get 'about'   => 'static_pages#about'     # about_path
  get 'contact' => 'static_pages#contact'   # contact_path
  get 'signup' => 'users#new'               # signup_path

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
end


  # get  'static_pages/help'
  # get  'static_pages/about'
  # get  'static_pages/contact'
  # get 'sessions/new'
  # get 'users/new'
  #
  # Prefix Verb   URI Pattern               Controller#Action
  # ============  =======================   ====================
  # root GET      /                         static_pages#home
  # help GET      /help(.:format)           static_pages#help
  # about GET     /about(.:format)          static_pages#about
  # contact GET   /contact(.:format)        static_pages#contact
  # signup GET    /signup(.:format)         users#new
  # login GET     /login(.:format)          sessions#new
  # POST          /login(.:format)          sessions#create
  # logout DELETE /logout(.:format)         sessions#destroy
  # users GET     /users(.:format)          users#index
  # POST          /users(.:format)          users#create
  # new_user GET  /users/new(.:format)      users#new
  # edit_user GET /users/:id/edit(.:format) users#edit
  # user GET      /users/:id(.:format)      users#show
  # PATCH         /users/:id(.:format)      users#update
  # PUT           /users/:id(.:format)      users#update
  # DELETE        /users/:id(.:format)      users#destroy


























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
