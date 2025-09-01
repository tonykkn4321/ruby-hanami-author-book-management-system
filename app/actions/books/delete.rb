module Tx::Actions::Books
  class Delete < Tx::Action
    include Import["repositories.book_repository"]
    def handle(req, res)
      repo = Tx::Repositories::BookRepository.new
      book = repo.find(req.params[:id])

      if book
        repo.delete(book.id)
        res.status = 204
      else
        res.status = 404
        res.body = { error: "Book not found" }.to_json
      end
    end
  end
end
