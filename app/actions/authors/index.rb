# frozen_string_literal: true

require_relative '../../repos/authors_repository' # Correct path to the repository

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          authors_repository = RubyHanamiAuthorBookManagementSystem::Repos::AuthorsRepository.new(rom)
          authors = authors_repository.all
          response.json(authors)
        end
      end
    end
  end
end
