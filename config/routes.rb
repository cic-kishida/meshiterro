Rails.application.routes.draw do

#  get 'users/show'  # "rails g controller users show" で重複するので削除
  root 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]

end
