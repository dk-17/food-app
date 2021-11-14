Rails.application.routes.draw do
  get "/" => "home#index"

  post "/" => "home#create", as: :sessions
  resources :users

end
