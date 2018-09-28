Rails.application.routes.draw do
  devise_for :users

  root 'blogs#index'
  resources :blogs, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  resources :users, only: [:show]
  # get 'blogs' => 'blogs#index'
  # get 'blogs/new' => 'blogs#new' #コントローラ名＃アクション
  # delete  'blogs/:id'  => 'blogs#destroy'
  # post 'blogs' => 'blogs#create'
  # patch   'blogs/:id'  => 'blogs#update'
  # get 'blogs/:id/edit' => 'blogs#edit'
  # get 'users/:id' => 'users#show'
end
