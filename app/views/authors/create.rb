module Web::Actions::Authors
  class Create < Web::Action
    def handle(request, response)
      input = request.params.slice(:first_name, :last_name)
      author = AuthorRepository.new.create(input)
      response.status = 201
      response.body = author.to_json
    end
  end
end
