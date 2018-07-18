Rails.application.routes.draw do
  get 'admin/index'

  devise_for :users
   root 'pages#index'
  #root :to => redirect("/users/sign_in")
  resources :pages
  resources :admins
  resources :abouts
  resources :awards
  resources :educations
  resources :interests
  resources :skills
end