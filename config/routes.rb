Rails.application.routes.draw do

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/delete'

  get 'comments/destroy'

  devise_for :users
  root to: "posts#index"

  resources 'posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
