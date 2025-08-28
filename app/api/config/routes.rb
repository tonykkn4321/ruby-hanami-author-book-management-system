# apps/api/config/routes.rb

require 'hanami/router'

class ApiRoutes
  def self.call(router)
    router.get '/authors', to: 'authors#index'
    router.post '/authors', to: 'authors#create'
    router.get '/authors/:id', to: 'authors#show'
    router.put '/authors/:id', to: 'authors#update'
    router.patch '/authors/:id', to: 'authors#update'
    router.delete '/authors/:id', to: 'authors#destroy'

    router.get '/books', to: 'books#index'
    router.post '/books', to: 'books#create'
    router.get '/books/:id', to: 'books#show'
    router.put '/books/:id', to: 'books#update'
    router.patch '/books/:id', to: 'books#update'
    router.delete '/books/:id', to: 'books#destroy'
  end
end