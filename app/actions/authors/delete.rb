module App::Actions::Authors
  class Delete < App::Action
    def handle(req, res)
      repo = AuthorRepository.new
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
