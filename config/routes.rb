Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
  	# member do
  	# 	get :test
  	# end
  	# collection do
  	# 	get :test2
  	# end
  end
  resources :pictures

  resources :movies

  resources :products

  resources :cars

  root "books#index"
end
