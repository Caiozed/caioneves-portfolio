Rails.application.routes.draw do
  root "home#index"
  resources :jobs, except: [:index, :show]
  resources :projects, except: [:index, :show]
  resources :sessions, only: [:new]
  post "/signin", to: "sessions#create", as: :sign_in
  delete "/signout", to: "sessions#destroy", as: :sign_out
end
