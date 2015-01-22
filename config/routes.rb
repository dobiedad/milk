Milk::Application.routes.draw do

  get "home/index"

  root 'home#index'
  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}

  get 'client_portal' => 'client_portal#index'
  get "client_portal/company_description" => "client_portal#company_description", as: :company_description
  get "client_portal/futures" => "client_portal#futures", as: :futures
  get "client_portal/primary_object" => "client_portal#primary_object", as: :investment
  get "client_portal/investment" => "client_portal#investment", as: :investment
  get "client_portal/riot_ritual" => "client_portal#riot_ritual", as: :riot_ritual



  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
