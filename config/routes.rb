Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  root to: 'articles#index'
  resources :articles
  resources :users
end
