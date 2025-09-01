module Tx::Actions::Books
  class Show < Hanami::Action
    def handle(req, res)
      book = Tx::Repositories::BookRepository.new.find(req.params[:id])
      if book
        res.body = book.to_h.to_json
      else
        res.status = 404
        res.body = { error: "Book not found" }.to_json
      end
    end
  end
end
