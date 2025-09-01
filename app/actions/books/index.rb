module App::Actions::Books
  class Index < App::Action
    def handle(_req, res)
      books = BookRepository.new.all
      res.body = books.map(&:to_h).to_json
    end
  end
end
