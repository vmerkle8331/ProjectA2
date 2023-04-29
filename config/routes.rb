Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  #resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :books

  #root "home#index"
end
