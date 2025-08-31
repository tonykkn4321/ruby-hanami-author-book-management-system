module Web::Actions::Books
  class Update < Web::Action
    def handle(request, response)
      repo = BookRepository.new
      book = repo.find(request.params[:id])

      if book
        updated = repo.update(book.id, request.params.slice(:title, :year, :author_id))
        response.body = updated.to_json
      else
        response.status = 404
        response.body = { error: "Book not found" }.to_json
      end
    end
  end
end
