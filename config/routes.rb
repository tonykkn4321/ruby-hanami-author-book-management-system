# config/routes.rb

module App
  class Routes < Hanami::Routes
    get '/authors', to: 'authors#index'
    post '/authors', to: 'authors#create'
    get '/authors/:id', to: 'authors#show'
    put '/authors/:id', to: 'authors#update'
    patch '/authors/:id', to: 'authors#update'
    delete '/authors/:id', to: 'authors#destroy'

    get '/books', to: 'books#index'
    post '/books', to: 'books#create'
    get '/books/:id', to: 'books#show'
    put '/books/:id', to: 'books#update'
    patch '/books/:id', to: 'books#update'
    delete '/books/:id', to: 'books#destroy'
  end
end
