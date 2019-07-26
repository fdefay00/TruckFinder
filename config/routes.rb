Rails.application.routes.draw do
  get 'trucks/new'

  
  resources :trucks do
    collection do 
      get :map
    end
  end
  root 'application#hello'
end
