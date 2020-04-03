Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :gameposts do
   resources :reviews, only: [:new, :create]
  end
  get 'gameposts/:id/destroy' => 'gameposts#destroy'
  resources :users
  root to: 'gameposts#index'
  get 'users/users/:id' => 'users#listofposts'
end
