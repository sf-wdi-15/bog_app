Rails.application.routes.draw do
  root to: 'creatures#index' 

  get '/creatures', to: "creatures#index"

  get '/creatures/new', to: 'creatures#new'

  ## My new show method
  get '/creatures/:id', to: 'creatures#show'

  # The Edit path
  get '/creatures/:id/edit', to: 'creatures#edit'

  post "/creatures", to: "creatures#create"

  # Route the incoming update using the id
  put '/creatures/:id', to: 'creatures#update'

end
