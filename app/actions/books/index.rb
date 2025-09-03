# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          books = BooksRepository.new.all
          response.json(books)
        end
      end
    end
  end
end
