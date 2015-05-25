Rails.application.routes.draw do
  resources :images, only: [:new, :create]

  #get 'static_pages/home'

  root 'static_pages#home'
end
