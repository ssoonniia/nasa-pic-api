Rails.application.routes.draw do

  root 'pictures#show'
  get'pictures/:date', to: 'pictures#show'
  get 'pictures', to: 'pictures#index'
  post 'pictures/:date/comments', to: 'comments#create'

end
