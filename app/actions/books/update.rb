module Tx::Actions::Books
  class Update < Tx::Action
    include Import"repositories.book_repository"]
    def handle(req, res)
      repo = Tx::Repositories::BookRepository.new
      book = repo.find(req.params[:id])

      if book
        updated = repo.update(book.id, req.params.slice(:title, :year, :author_id))
        res.body = updated.to_h.to_json
      else
        res.status = 404
        res.body = { error: "Book not found" }.to_json
      end
    end
  end
end
