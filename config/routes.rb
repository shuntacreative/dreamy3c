Rails.application.routes.draw do
  get "users" => "users#index"
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  devise_for :users
  match '/users/:id', to: 'users#show', via: 'get'
  get 'dreamys/index'
  root to: "dreamys#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
