# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class BooksController < RubyHanamiAuthorBookManagementSystem::Action
        # List all books
        def index
          books = BooksRepository.new.all
          response.json(books)
        end

        # Create a new book
        def create
          book = BooksRepository.new.create(params[:book])
          response.json(book, status: :created)
        end
      end
    end
  end
end
