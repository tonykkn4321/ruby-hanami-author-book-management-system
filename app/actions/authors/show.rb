module Tx::Actions::Authors
  class Show < Tx::Action
    include Deps["repositories.author_repository"]
    def handle(req, res)
      author = Tx::Repositories::AuthorRepository.new.find(req.params[:id])
      if author
        res.body = author.to_h.to_json
      else
        res.status = 404
        res.body = { error: "Author not found" }.to_json
      end
    end
  end
end
