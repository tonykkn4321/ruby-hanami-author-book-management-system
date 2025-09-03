# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          book = BooksRepository.new.create(params[:book])
          response.json(book, status: :created)
        end
      end
    end
  end
end
