# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  class Routes < Hanami::Routes
    # Add your routes here. See https://guides.hanamirb.org/routing/overview/ for details.
    get    '/authors',        to: 'authors.index'
    post   '/authors',        to: 'authors.create'
    get    '/authors/:id',    to: 'authors.show'
    patch  '/authors/:id',    to: 'authors.update'
    put    '/authors/:id',    to: 'authors.update'
    delete '/authors/:id',    to: 'authors.delete'

    get    '/books',          to: 'books.index'
    post   '/books',          to: 'books.create'
    get    '/books/:id',      to: 'books.show'
    patch  '/books/:id',      to: 'books.update'
    put    '/books/:id',      to: 'books.update'
    delete '/books/:id',      to: 'books.delete'
    get "/authors", to: "authors.index"
    post "/authors", to: "authors.create"
    get "/authors/:id", to: "authors.show"
    patch "/authors/:id", to: "authors.update"
    get "/authors/delete", to: "authors.delete"
    get "/books", to: "books.index"
    post "/books", to: "books.create"
    get "/books/:id", to: "books.show"
    patch "/books/:id", to: "books.update"
    get "/books/delete", to: "books.delete"
  end
end
