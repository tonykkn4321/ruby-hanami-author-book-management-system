# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Update < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          book = BookRepository.new.find(request.params[:id])
          book.assign_attributes(book_params(request))

          if BookRepository.new.update(book)
            response.body = book.to_json
          else
            response.status = 422
            response.body = { error: 'Failed to update book.' }.to_json
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
