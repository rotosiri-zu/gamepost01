Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :gameposts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end  
  root 'gameposts#index'
  resources :users, only: [:show]
  get 'users/users/:id' => 'users#listofposts'
end
