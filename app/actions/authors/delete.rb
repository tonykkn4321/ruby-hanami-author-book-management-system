# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Delete < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          author = AuthorRepository.new.find(request.params[:id])
          AuthorRepository.new.delete(author.id)
          response.status = 204 # No Content
        end
      end
    end
  end
end
