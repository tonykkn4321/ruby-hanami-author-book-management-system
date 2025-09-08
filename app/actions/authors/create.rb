# From POE:

# frozen_string_literal: true
'''
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
            response.body = { message: "Author created successfully" }.to_json
          else
            response.status = 422 # Unprocessable Entity
            response.body = { error: "Failed to create author" }.to_json
          end

          response.content_type = "application/json"
        end
      end
    end
  end
end
'''


# From Copilot:

# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(req, res)
          payload = req.params

          # Basic validation
          unless payload["first_name"] && payload["last_name"]
            res.status = 422
            res.body = { error: "Missing required fields: first_name and last_name" }.to_json
            return
          end

          repo = RubyHanamiAuthorBookManagementSystem::Repos::AuthorsRepo.new
          author = repo.create(
            first_name: payload["first_name"],
            last_name: payload["last_name"]
          )

          res.status = 201
          res.headers["Content-Type"] = "application/json"
          res.body = {
            id: author.id,
            first_name: author.first_name,
            last_name: author.last_name
          }.to_json
        end
      end
    end
  end
end
