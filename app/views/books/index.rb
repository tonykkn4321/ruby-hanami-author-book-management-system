module Web::Actions::Books
  class Index < Web::Action
    def handle(request, response)
      books = BookRepository.new.all
      response.body = books.to_json
    end
  end
end
