BagIt::Application.routes.draw do
  get "meal/login"

  get "meal/confirm"

  get "meal/breakfast"

  get "meal/lunch"

  get "meal/dinner"

  #match 'meal' => 'meal#meals'
  match 'breakfast' => 'meal#breakfast'
  match 'login' => 'meal#login'
  match 'meal/login' => 'meal#login'
  match 'meal/submit' => 'meal#submit'
  match 'meal/breakfast' => 'meal#breakfast'
  match 'meal/lunch' => 'meal#lunch'
  match 'meal/dinner' => 'meal#dinner'
  match 'meal/confirm' => 'meal#confirm'
  match 'meal/meals' => 'meal#submit'
  match 'confirm' => 'meal#confirm'
  match 'confirmlunch' => 'meal#confirmlunch'
  match 'meal/confirmlunch' => 'meal#confirmlunch'
  match 'meal/confirmdinner' => 'meal#confirmdinner'
  match 'meal/logout' => 'meal#logout'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
 root :to => 'meal#login'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
