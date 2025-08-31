module Web::Actions::Books
  class Create < Web::Action
    def handle(request, response)
      input = request.params.slice(:title, :year, :author_id)
      book = BookRepository.new.create(input)
      response.status = 201
      response.body = book.to_json
    end
  end
end
