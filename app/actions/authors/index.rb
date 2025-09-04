# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          # Fetch all authors from the relation
          authors = RubyHanamiAuthorBookManagementSystem::Relations::Authors.new.to_a

          # Set the response body, status, and content type
          response.body = authors.to_json
          response.status = 200
          response.content_type = 'application/json'
        end
      end
    end
  end
end
