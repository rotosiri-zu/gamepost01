Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :games do
    resources :reviews
   end
   get 'games/:id/destroy' => 'games#destroy'
   resources :users
   root to: 'games#index'
   get 'users/users/:id' => 'users#listofposts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
