Rails.application.routes.draw do
  get 'images/new'

  get 'static_pages/home'

  root 'static_pages#home'
end
