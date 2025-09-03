# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          authors = AuthorsRepository.new.all
          response.json(authors)
        end
      end
    end
  end
end
