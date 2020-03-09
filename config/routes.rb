Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :gameposts, only: [:index, :show, :new, :create, :edit, :update, :destroy] 
  root 'gameposts#index'
  resources :users, only: [:show]
  get 'users/:id' => 'users#listofposts'
end
