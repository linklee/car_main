SampleApp::Application.routes.draw do
  resources :page_parts

  resources :bas

  resources :users
  resources :leads

  resources :sessions, only: [:new, :create, :destroy]
  root  'static_pages#home'
  match '/adminadmin',  to: 'leads#index',            via: 'get'
  match '/leads',  to: 'leads#index',            via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/new',  to: 'leads#new',            via: 'get'

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  get :check_car_status, to: 'static_pages#check_lead_car_status', as: 'check_lead_car_status'
  get :appointment, to: 'static_pages#appointment', as: 'make_appointment'
  get :send_email, to: 'static_pages#make_appointment', as: 'mail'
  get :pages, to: 'static_pages#pages', as: 'pages'
  match '/services',  to: 'static_pages#services',            via: 'get'
  match '/thanks',  to: 'static_pages#thanks',            via: 'get'

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
