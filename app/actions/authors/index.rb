# frozen_string_literal: true

#require_relative '../../repos/authors_repository' # Correct path to the repository

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          authors = RubyHanamiAuthorBookManagementSystem::Relations::Authors.new.to_a
          response.body = authors.to_json
          response.status = 200
          response.content_type = 'application/json'
        end
      end
    end
  end
end
