Rails.application.routes.draw do
 
  devise_for :users
  root 'homes#top'
  
resources :users,only: [:show,:index,:edit,:update]

resources :books, only: [:new, :create, :index, :show, :destroy, :edit] do
  resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
end
  
  get 'home/about' => 'homes#about'
end