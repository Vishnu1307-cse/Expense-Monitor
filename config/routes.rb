Rails.application.routes.draw do
  resources :expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  root "sessions#login"
  # Defines the root path route ("/")
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'  # Handles form submission
  delete '/logout', to: 'sessions#destroy'
  get '/expenses', to: 'expenses#index', as: :expenses_index
  get "users/new"

  get "expenses/index"
  get "expenses/header"
  get "expenses/new"
  get "sessions/login"

  Rails.application.routes.draw do
    resources :users
  end

end
