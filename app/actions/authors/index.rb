module Tx::Actions::Authors
  class Index < Tx::Action
    include Import["repositories.author_repository"]
    def handle(_req, res)
      authors = Tx::Repositories::AuthorRepository.new.all
      res.body = authors.map(&:to_h).to_json
    end
  end
end
