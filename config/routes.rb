Rails.application.routes.draw do
  post '/signin' => 'users#signin'
  post '/signup' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get'pictures/:date', to: 'pictures#show'
  get 'pictures', to: 'pictures#index'
  resources :mars
  # resources :users
  # resources :tokens

  resources :pictures do
    resources :comments, only: [:index, :create]
  end


  root 'pictures#show'
end
