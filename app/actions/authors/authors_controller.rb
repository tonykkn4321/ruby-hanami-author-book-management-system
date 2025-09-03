# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class AuthorsController < RubyHanamiAuthorBookManagementSystem::Action
          # List all authors
          def index
            authors = AuthorsRepository.new.all
            response.json(authors)
          end

          # Create a new author
          def create
            author = AuthorsRepository.new.create(params[:author])
            response.json(author, status: :created)
          end
      end
    end
  end
end
