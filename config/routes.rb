Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get 'home/about' => 'homes#about'
  resources :books, only: [:create, :edit, :update, :show , :index, :destroy]
  resources :users, only: [:index, :edit, :show, :update]
end
