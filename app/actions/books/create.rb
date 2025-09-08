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
      class Index < RubyHanamiAuthorBookManagementSystem::Action
        def handle(_req, res)
          repo = RubyHanamiAuthorBookManagementSystem::Repos::BooksRepo.new
          books = repo.all

          res.headers["Content-Type"] = "application/json"
          res.status = 200
          res.body = books.map { |book| serialize(author) }.to_json
        end

        private

        def serialize(book)
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

