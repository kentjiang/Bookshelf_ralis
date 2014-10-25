Rails.application.routes.draw do
	get "home/index"
  resources :home
  root :to => 'home#index'
  
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  

  
  resources :articles

end
