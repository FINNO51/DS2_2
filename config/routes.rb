Rails.application.routes.draw do
  resources :users
  resources :sesion
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
      resources :users
    end
  end

  get '/login', :to => 'sesion#login', as :login
  # post '', to: 'sesion#create'
  post '', :to => 'sesion#create'
 # post '/login', :to => 'sesion#create'


  # Defines the root path route ("/")
  # root "articles#index"
end
