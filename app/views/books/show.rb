module Web::Actions::Books
  class Show < Web::Action
    def handle(request, response)
      book = BookRepository.new.find(request.params[:id])
      if book
        response.body = book.to_json
      else
        response.status = 404
        response.body = { error: "Book not found" }.to_json
      end
    end
  end
end
