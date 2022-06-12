Rails.application.routes.draw do
  #resources :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#  namespace :api, defaults: { format: 'json' }  do
 #   namespace :v1 do
 #     resources :sesion
  #    resources :users
   # end
  #end
  
  get '' => 'sesion#index'
  # post '', to: 'sesion#create'
  #post '/login' => 'sesion#create'
  post '/login' => 'sesion#login'
  # post '/login', :to => 'sesion#create'


  # Defines the root path route ("/")
  # root "articles#index"
end
