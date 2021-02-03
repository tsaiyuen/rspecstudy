Rails.application.routes.draw do
  get 'enemies/update'
  get 'enemies/destroy'
  root to: 'pages#home'
  
  resources :users, only: [:index, :create]
  resources :enemies, only: [:update, :destroy]
  
end
