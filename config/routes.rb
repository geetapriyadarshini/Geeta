Rails.application.routes.draw do
  resources :imgs
  resources :images
  resources :city
  resources :states

  resources :countries
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  	
  	resources :companies
    resources :places
    resources :nodes
    resources :regions
    resources :user_regions
    resources :user_roles

  	#get 'imgs/imgs'
 
  root 'companies#index'


  

 # get "devise/registrations#create"
 
end
