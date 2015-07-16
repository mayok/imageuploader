Rails.application.routes.draw do
  get 'users/new'

  resources :images, only: [:new, :create, :show]
  root  'static_pages#home'
  get   'signup'  => 'users#new'
end
