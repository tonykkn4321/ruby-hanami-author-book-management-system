module Tx::Actions::Authors
  class Update < Hanami::Action
    def handle(req, res)
      repo = Tx::Repositories::AuthorRepository.new
      author = repo.find(req.params[:id])

      if author
        updated = repo.update(author.id, req.params.slice(:first_name, :last_name))
        res.body = updated.to_h.to_json
      else
        res.status = 404
        res.body = { error: "Author not found" }.to_json
      end
    end
  end
end
