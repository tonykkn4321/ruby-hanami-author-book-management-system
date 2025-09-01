module App::Actions::Books
  class Create < App::Action
    def handle(req, res)
      input = req.params.slice(:title, :year, :author_id)
      book = BookRepository.new.create(input)
      res.status = 201
      res.body = book.to_h.to_json
    end
  end
end
