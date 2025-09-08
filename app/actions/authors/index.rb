# From POE:

# frozen_string_literal: true
'''
module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          # Fetch all authors from the relation
          authors = RubyHanamiAuthorBookManagementSystem::Relations::Authors.new.to_a

          # Add logging
          puts "Fetched authors: #{authors.inspect}"

          # Set the response body, status, and content type
          response.body = authors.to_json
          response.status = 200
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
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(_req, res)
          repo = RubyHanamiAuthorBookManagementSystem::Repos::AuthorsRepo.new
          authors = repo.all

          res.headers["Content-Type"] = "application/json"
          res.status = 200
          res.body = authors.map { |author| serialize(author) }.to_json
        end

        private

        def serialize(author)
          {
            id: author.id,
            first_name: author.first_name,
            last_name: author.last_name,
            created_at: author.created_at
          }
        end
      end
    end
  end
end
