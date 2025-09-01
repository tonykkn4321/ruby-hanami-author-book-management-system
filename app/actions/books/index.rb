module Tx::Actions::Books
  class Index < Tx::Action
    include Import["repositories.book_repository"]
    def handle(_req, res)
      books = Tx::Repositories::BookRepository.new.all
      res.body = books.map(&:to_h).to_json
    end
  end
end
