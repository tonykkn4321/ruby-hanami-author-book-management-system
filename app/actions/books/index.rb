# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          books = RubyHanamiAuthorBookManagementSystem::Relations::Books.new.to_a
          response.body = books.to_json
          response.status = 200
          response.content_type = 'application/json'
        end
      end
    end
  end
end
