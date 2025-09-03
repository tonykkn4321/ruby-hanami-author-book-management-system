# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
            author = AuthorsRepository.new.create(params[:author])
            response.json(author, status: :created)
        end
      end
    end
  end
end
