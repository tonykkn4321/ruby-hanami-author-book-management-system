module Tx::Actions::Authors
  class Index < Hanami::Action
    include Deps["repositories.author_repository"]
    def handle(_req, res)
      authors = Tx::Repositories::AuthorRepository.new.all
      res.body = authors.map(&:to_h).to_json
    end
  end
end
