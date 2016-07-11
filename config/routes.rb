Rails.application.routes.draw do
  root 'devices#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'devices/index'

  resources :devices
  resources :galaxies
  resources :iphones
  resources :ipads


  get 'about' => 'home#about'
  get 'contact' => 'home#contact'


end
