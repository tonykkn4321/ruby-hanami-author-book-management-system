# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  class Routes < Hanami::Routes
    # Add your routes here. See https://guides.hanamirb.org/routing/overview/ for details.
    get '/authors', to: 'authors#index'
    post '/authors', to: 'authors#create'
    get '/books', to: 'books#index'
    post '/books', to: 'books#create'
  end
end
