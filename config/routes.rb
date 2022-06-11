Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
      resources :users
    end
  end

  get 'sesion', to: 'sesion#login', as: :sesion


  # Defines the root path route ("/")
  # root "articles#index"
end
