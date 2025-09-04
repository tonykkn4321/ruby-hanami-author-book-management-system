# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          # Fetch all books from the relation
          books = RubyHanamiAuthorBookManagementSystem::Relations::Books.new.to_a

          # Add logging
          puts "Fetched books: #{books.inspect}"

          # Set the response body, status, and content type
          response.body = books.to_json
          response.status = 200
          response.content_type = 'application/json'
        end
      end
    end
  end
end
