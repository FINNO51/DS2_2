Rails.application.routes.draw do
  #resources :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#  namespace :api, defaults: { format: 'json' }  do
 #   namespace :v1 do
 #     resources :sesion
  #    resources :users
   # end
  #end
  
  get '/login' => 'sesion#login'
  # post '', to: 'sesion#create'
  #post '/login' => 'sesion#create'
  post '/logearse' => 'sesion#logearse'
  # post '/login', :to => 'sesion#create'


  # Defines the root path route ("/")
  # root "articles#index"
end
