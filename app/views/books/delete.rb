module Web::Actions::Books
  class Delete < Web::Action
    def handle(request, response)
      repo = BookRepository.new
      book = repo.find(request.params[:id])

      if book
        repo.delete(book.id)
        response.status = 204
      else
        response.status = 404
        response.body = { error: "Book not found" }.to_json
      end
    end
  end
end
