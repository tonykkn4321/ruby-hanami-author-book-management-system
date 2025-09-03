# frozen_string_literal: true

require_relative '../../../repos/authors_repository' # Adjust path as needed

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          authors = Repo.AuthorsRepository.new.all
          response.json(authors)
        end
      end
    end
  end
end


