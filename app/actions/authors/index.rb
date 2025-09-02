# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          @authors = AuthorRepository.new.all
          response.body = @authors.to_json
        end
      end
    end
  end
end
