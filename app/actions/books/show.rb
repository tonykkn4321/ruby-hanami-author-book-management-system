# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Show < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          @book = BookRepository.new.find(request.params[:id])
          response.body = @book.to_json
        end
      end
    end
  end
end
