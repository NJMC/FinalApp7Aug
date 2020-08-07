Rails.application.routes.draw do
  resources :regional_profiles do
    resources :comments
  end
  
  get 'pages/user_profile' 

  root 'pages#home'

  devise_for :users
  
  get 'pages/mapdublin'

  get 'pages/mapcork'
  
  get 'pages/mapwaterford'

  get 'pages/maplimerick'

  get 'pages/mapgalway'
  
  get 'pages/regions'
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
