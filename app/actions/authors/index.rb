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
        include Deps["persistence.repos.authors_repo"]

        def handle(_req, res)
          authors = authors_repo.all
          res.status = 200
          res.body = authors.map { |author| serialize(author) }.to_json
        end

        private

        def serialize(author)
          {
            id: author.id,
            name: author.name,
            bio: author.bio,
            created_at: author.created_at
          }
        end
      end
    end
  end
end
