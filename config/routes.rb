Rails.application.routes.draw do
  resources :images, only: [:create]

  #get 'static_pages/home'

  root 'static_pages#home'
end
