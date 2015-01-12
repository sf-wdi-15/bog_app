Rails.application.routes.draw do

  # set default get of root '/' to 'app/views/bogs/index.html.erb'
  root to: 'bogs#index'

  # just to be RESTful, create direct planes route
  get '/', to: 'bogs#index'

  # make testing easier, set root '/new' to "bogs/new"
  get '/new', to: 'bogs#new'
  
  # display new form
  get 'bogs/new', to: 'bogs#new'

  # show specific bog
  get 'bogs/:id', to: 'bogs#show'

  #show edit form
  get 'bogs/:id/edit', to: 'bogs#edit'

  # handle submitted form, post to /planes
  post '/bogs', to: 'bogs#create'

end
