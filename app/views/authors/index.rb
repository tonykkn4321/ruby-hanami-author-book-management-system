
module Actions::Authors
  class Index < Action
    def handle(request, response)
      authors = AuthorRepository.new.all
      response.body = authors.to_json
    end
  end
end
