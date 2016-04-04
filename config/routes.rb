Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }, :skip => [:sessions]
  as :user do
    delete 'signout' => 'sessions#destroy', :as => :destroy_user_session
    get '/user/sign-in' => 'devise/sessions#new', :as => :new_user_session
    get '/admin/sign-in' => 'devise/sessions#new'
    post 'signin' => 'devise/sessions#create', :as => :user_session
    get "/user/sign-up" => "devise/registrations#new"
  end
  #devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#index'
  post "search" =>'dashboard#search'
  post "update_login_status" =>'dashboard#update_login_status'
  
  get 'employees' => 'dashboard#show_users'
  get 'show-payroll' => 'dashboard#show_payroll'
  get 'place_order' => 'dashboard#place_order'
  post 'save_order' => 'dashboard#save_order'
  post "update_order_status" => 'dashboard#update_order_status'
  get 'track_order' => "dashboard#track_order"
  
  post 'update_role' => 'dashboard#update_role'
  post 'save_payroll' => 'dashboard#save_payroll'
  
  get 'activate_new_users' => 'dashboard#activate_new_users'
  post 'activate_user' => 'dashboard#activate_user'
  
  
  get 'create-task' => 'task_assigner#create'
  post 'save_payment_information' => 'dashboard#save_payment_information'
  get 'update-payment-information' => 'dashboard#update_payment_information'
  post 'save-task' => 'task_assigner#save'
  post 'assign_task' => 'task_assigner#assign_task'
  
  get 'tasks' => 'task_assigner#show'
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
