Rails.application.routes.draw do
  get 'links/index'

  get 'links/new'

  get 'links/create'

  get 'links/edit'

  get 'links/update'

  root 'welcome#index'

  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:create, :new]
end
