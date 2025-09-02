# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          author = Author.new(author_params(request))

          if AuthorRepository.new.create(author)
            response.status = 201
            response.body = author.to_json
          else
            response.status = 422
            response.body = { error: 'Failed to create author.' }.to_json
        end
      end
    end
  end
end
