Rails.application.routes.draw do
  get 'dreamys/index'
  root to: "dreamys#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
