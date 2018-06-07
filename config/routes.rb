Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures, except: ["index"]
  get '/pictures' => 'pictures#index'
  get '/search' => 'pictures#search'
  post '/search' => 'pictures#search'

  get 'signup' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  #gives the ability to logout
  delete 'logout' => 'sessions#destroy'

  get '/myprofile' => 'pictures#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
