module Tx::Actions::Books
  class Index < Hanami::Action
    def handle(_req, res)
      books = Tx::Repositories::BookRepository.new.all
      res.body = books.map(&:to_h).to_json
    end
  end
end
