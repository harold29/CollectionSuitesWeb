# Description of method
#
# @return [Type] description of returned object
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  get '/index', to: 'home#home'
  get '/home', to: 'home#index'
  get '/vip-entrance',     to: 'sessions#new'
  post '/vip-entrance',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
