# Description of method
#
# @return [Type] description of returned object
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  get '/index', to: 'home#home'
  get '/home', to: 'home#index'
  get '/home_guest', to: 'home#home_guest'
  get '/thanks_register', to: 'home#thanks'
  get '/register_form', to: 'home#registerform'
  get '/updates_form', to: 'home#updatesform'
  get '/thanks_register_member', to: 'home#thanksmem'
  get '/thanks_interest', to: 'home#thanksinst'
  get '/become', to: 'home#become'
  get '/vip-entrance',     to: 'sessions#new'
  post '/vip-entrance',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/error', to: 'status#error'

  post '/createuser', to: 'home#createuser'
  post '/updateuser', to: 'home#updateuser'
end
