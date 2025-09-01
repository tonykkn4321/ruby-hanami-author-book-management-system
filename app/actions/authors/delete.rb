module Tx::Actions::Authors
  class Delete < Tx::Action
    include Import["repositories.author_repository"]
    def handle(req, res)
      repo = Tx::Repositories::AuthorRepository.new
      author = repo.find(req.params[:id])

      if author
        repo.delete(author.id)
        res.status = 204
      else
        res.status = 404
        res.body = { error: "Author not found" }.to_json
      end
    end
  end
end
