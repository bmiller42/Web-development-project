Rails.application.routes.draw do
  
    root "images#index"
    resources :image_users
    devise_for :users
    resources :images
    resources :tags

end
