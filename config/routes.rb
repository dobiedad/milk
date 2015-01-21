Milk::Application.routes.draw do

  get "home/index"

  root 'home#index'
  devise_for :users

  get 'client_portal' => 'client_portal#index'
end
