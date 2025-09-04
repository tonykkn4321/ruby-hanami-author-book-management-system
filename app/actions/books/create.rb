# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          book_params = request.params[:book]
          book = RubyHanamiAuthorBookManagementSystem::Relations::Books.new

          # Assuming you have a method to create the book in the relation
          if book.create(book_params)
            response.status = 201 # Created
            response.body = { message: 'Book created successfully' }.to_json
          else
            response.status = 422 # Unprocessable Entity
            response.body = { error: 'Failed to create book' }.to_json
          end

          response.content_type = 'application/json'
        end
      end
    end
  end
end
