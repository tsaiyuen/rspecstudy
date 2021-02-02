Rails.application.routes.draw do
  root to: 'pages#home'
  
  resources :users, only: [:index, :create]
  
end
