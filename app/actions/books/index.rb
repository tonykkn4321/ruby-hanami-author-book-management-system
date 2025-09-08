# From POE:

# frozen_string_literal: true
'''
module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          # Fetch all books from the relation
          books = RubyHanamiAuthorBookManagementSystem::Relations::Books.new.to_a

          # Add logging
          puts "Fetched books: #{books.inspect}"

          # Set the response body, status, and content type
          response.body = books.to_json
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
    module Books
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(_req, res)
          repo = RubyHanamiAuthorBookManagementSystem::Repos::BooksRepo.new
          books = repo.all

          res.headers["Content-Type"] = "application/json"
          res.status = 200
          res.body = books.map { |author| serialize(book) }.to_json
        end

        private

        def serialize(author)
          {
            id: book.id,
            title: book.title,
            year: book.year,
            author_id: book.author_id
          }
        end
      end
    end
  end
end
