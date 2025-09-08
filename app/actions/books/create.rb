# From POE:

# frozen_string_literal: true
'''
module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Books
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          book_params = request.params[:book]
          book = RubyHanamiAuthorBookManagementSystem::Relations::Books.new

          # Assuming you have a method to create the book in the relation
          if book.create(book_params)
            response.status = 201 # Created
            response.body = { message: "Book created successfully" }.to_json
          else
            response.status = 422 # Unprocessable Entity
            response.body = { error: "Failed to create book" }.to_json
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
    module Books
      class Create < RubyHanamiAuthorBookManagementSystem::Action
        def handle(req, res)
          payload = req.params

          # Basic validation
          unless payload["title"] && payload["year"] && payload["author_id"]
            res.status = 422
            res.body = { error: "Missing required fields: title, year and author_id" }.to_json
            return
          end

          repo = RubyHanamiAuthorBookManagementSystem::Repos::BooksRepo.new
          book = repo.create(
            title: payload["title"],
            year: payload["year"],
            author_id: payload["author_id"]
          )

          res.status = 201
          res.headers["Content-Type"] = "application/json"
          res.body = {
            id: book.id,
            title: book.title,
            year: book.year,
            author_id: book.author_id
          }.to_json
        end
      end
    end
  end
end