Rails.application.routes.draw do
  get 'welcome/index'
  get 'search/name/results' => 'recipes#name_results', as: :name_results
  get 'search/name' => 'recipes#name_search', as: :name_search
  get 'search/ingredient/results' => 'recipes#ingredient_results', as: :ingredient_results
  get 'search/ingredient' => 'recipes#ingredient_search', as: :ingredient_search
  get 'search/cuisine/:type' => 'recipes#cuisine_results', as: :cuisine_results
  get 'search/cuisine' => 'recipes#cuisine_search', as: :cuisine_search
  get 'responses/new/:recipe_id' => 'responses#new', as: :new_response
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :recipes
  resources :responses
  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
