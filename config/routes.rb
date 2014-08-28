Rails.application.routes.draw do

  root 'timeslot#index'

  post '/api/timeslots', to: 'timeslot#create'
  get '/api/timeslots', to: 'timeslot#index'
  post '/api/boats', to: 'boats#create'
  get '/api/boats', to: 'boats#index'
  post 'api/booking', to: 'booking#create'
  post 'api/assignment', to: 'assignment#create'

#        Prefix Verb  URI Pattern               Controller#Action
#           root GET  /                         timeslot#index
#   api_timeslot POST /api/timeslot(.:format)   timeslot#create
#  api_timeslots GET  /api/timeslots(.:format)  timeslot#index
#      api_boats POST /api/boats(.:format)      boats#create
#                GET  /api/boats(.:format)      boats#index
#    api_booking POST /api/booking(.:format)    booking#create
# api_assignment POST /api/assignment(.:format) assignment#create


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
