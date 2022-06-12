Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
      resources :users
    end
  end

  get '', to: 'sesion#login', as: :sesion
 # post '', to: 'sesion#create'
  post '', :to => 'sesion#create'


  # Defines the root path route ("/")
  # root "articles#index"
end
