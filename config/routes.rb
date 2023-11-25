Rails.application.routes.draw do
  resources :loans
  resources :books
  devise_for :users
  get 'pages/home'
  get 'pages/faq'
  root "pages#home"
  
end
