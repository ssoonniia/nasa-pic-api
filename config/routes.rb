Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get'pictures/:date', to: 'pictures#show'
  resources :mars

  root 'pictures#show'
end
