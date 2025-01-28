Rails.application.routes.draw do

  root "post#index"

  resources :users
  get 'user' => 'user#index'
  get 'user/new' => 'user#new'
  post 'user/new' => 'user#create'
  get 'user/:id/edit' => 'user#edit'
  post 'user/:id/edit' => 'user#update'
end
