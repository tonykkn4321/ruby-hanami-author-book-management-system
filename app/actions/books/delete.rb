# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Delete < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          book = BookRepository.new.find(request.params[:id])
          BookRepository.new.delete(book.id)
          response.status = 204 # No Content
        end
      end
    end
  end
end
