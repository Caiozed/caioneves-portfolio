Rails.application.routes.draw do
  root "home#index"
  resources :jobs, except: [:index, :show]
  resources :projects, except: [:index, :show]
end
