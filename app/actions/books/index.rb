# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          @books = BookRepository.new.all
          response.body = @books.to_json
        end
      end
    end
  end
end
