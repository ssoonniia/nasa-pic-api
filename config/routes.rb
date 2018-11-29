Rails.application.routes.draw do


  post 'pictures/:date/comments', to: 'comments#create'
  get'pictures/:date', to: 'pictures#show'
  get 'pictures', to: 'pictures#index'

  root 'pictures#show'
end


# resources :mars
