module Web::Actions::Authors
  class Update < Web::Action
    def handle(request, response)
      repo = AuthorRepository.new
      author = repo.find(request.params[:id])

      if author
        updated = repo.update(author.id, request.params.slice(:first_name, :last_name))
        response.body = updated.to_json
      else
        response.status = 404
        response.body = { error: "Author not found" }.to_json
      end
    end
  end
end
