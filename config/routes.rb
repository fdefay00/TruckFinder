Rails.application.routes.draw do
  get 'trucks/new'

  
  resources :trucks 
  root 'trucks#index'
end
