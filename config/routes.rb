Rails.application.routes.draw do
  root 'welcome#index'

  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  put '/links/:id/read', as: :read, to: 'links#read'
  put '/links/:id/unread', as: :unread, to: 'links#unread'

  resources :users, only: [:create, :new]
  resources :links, except: [:show]
end
