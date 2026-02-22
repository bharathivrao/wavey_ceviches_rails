Rails.application.routes.draw do
  root 'pages#home'

  get '/menu', to: 'pages#menu'
  get '/online-ordering', to: 'pages#online_ordering'
end
