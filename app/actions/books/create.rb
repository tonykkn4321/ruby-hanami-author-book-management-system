# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          book = Book.new(book_params(request))

          if BookRepository.new.create(book)
            response.status = 201
            response.body = book.to_json
          else
            response.status = 422
            response.body = { error: 'Failed to create book.' }.to_json
          end
        end

        private

        def book_params(request)
          request.params[:book].slice(:title, :year, :author_id)
        end
      end
    end
  end
end
