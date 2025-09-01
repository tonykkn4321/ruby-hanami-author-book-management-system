module Tx::Actions::Authors
  class Index < Hanami::Action
    def handle(_req, res)
      authors = AuthorRepository.new.all
      res.body = authors.map(&:to_h).to_json
    end
  end
end
