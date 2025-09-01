module Tx::Actions::Authors
  class Create < Tx::Action
      include Deps["repositories.author_repository"]
      def handle(req, res)
        input = req.params.slice(:first_name, :last_name)
        author = Tx::Repositories::AuthorRepository.new.create(input)
        res.status = 201
        res.body = author.to_h.to_json
      end
  end
end