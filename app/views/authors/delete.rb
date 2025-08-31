module Web::Actions::Authors
  class Delete < Web::Action
    def handle(request, response)
      repo = AuthorRepository.new
      author = repo.find(request.params[:id])

      if author
        repo.delete(author.id)
        response.status = 204
      else
        response.status = 404
        response.body = { error: "Author not found" }.to_json
      end
    end
  end
end
