module Authors
  class Index < Hanami::Action
    def handle(request, response)
      authors = AuthorRepository.new.all
      response.body = authors.to_json
    end
  end
end
