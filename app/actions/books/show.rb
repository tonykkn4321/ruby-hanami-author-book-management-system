module App::Actions::Books
  class Show < App::Action
    def handle(req, res)
      book = BookRepository.new.find(req.params[:id])
      if book
        res.body = book.to_h.to_json
      else
        res.status = 404
        res.body = { error: "Book not found" }.to_json
      end
    end
  end
end
