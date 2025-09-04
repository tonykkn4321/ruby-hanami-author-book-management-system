# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          author_params = request.params[:author]
          author = RubyHanamiAuthorBookManagementSystem::Relations::Authors.new

          # Assuming you have a method to create the author in the relation
          if author.create(author_params)
            response.status = 201 # Created
            response.body = { message: 'Author created successfully' }.to_json
          else
            response.status = 422 # Unprocessable Entity
            response.body = { error: 'Failed to create author' }.to_json
          end

          response.content_type = 'application/json'
        end
      end
    end
  end
end
