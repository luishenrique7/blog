Rails.application.routes.draw do


  resources :home
  
  resources :compromissos

  resources :contacts

  resources :uploads

  resources :inicio

  root 'usuarios#index'
  
  get 'usuarios/index'

  resources :comentarios

  resources :posts

  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  
  resources :usuarios

end
