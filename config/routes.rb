Rails.application.routes.draw do
  root "pages#home"
  get "/about" => "pages#about"

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
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
