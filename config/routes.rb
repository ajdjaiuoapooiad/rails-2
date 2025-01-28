Rails.application.routes.draw do
  root "post#index"

  get 'user' => 'user#index'
  get 'user/new' => 'user#new'
  # New先に書く
  get 'user/:id' => 'user#detail'
  post 'user/new' => 'user#create'
  get 'user/:id/edit' => 'user#edit'
  post 'user/:id/edit' => 'user#update'
end
