Milk::Application.routes.draw do

  get "home/index"

  root 'home#index'
  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  
  get 'client_portal' => 'client_portal#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
