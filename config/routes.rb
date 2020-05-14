Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'games#index'
  resources :games do
    collection do
      get :search
    end
    resources :reviews
  end
  resources :videogames
  resources :pcgame
  resources :socialgame
   get 'games/:id/destroy' => 'games#destroy'
   resources :users
   get 'users/users/:id' => 'users#listofposts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
