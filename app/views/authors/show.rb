module Web::Actions::Authors
  class Show < Web::Action
    def handle(request, response)
      author = AuthorRepository.new.find(request.params[:id])
      if author
        response.body = author.to_json
      else
        response.status = 404
        response.body = { error: "Author not found" }.to_json
      end
    end
  end
end
