Rails.application.routes.draw do


  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]

  root to: "homes#top"

  get 'home/about' => 'homes#about', as: 'about'

  resources :books, only: [:index, :create, :edit, :show, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

end
