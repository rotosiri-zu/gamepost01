Rails.application.routes.draw do
  get 'users/show'
  get 'gameposts/index'
  get 'gameposts/new'
  get 'gameposts/create'
  get 'gameposts/show'
  get 'gameposts/destroy'
  get 'gameposts/edit'
  get 'gameposts/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
