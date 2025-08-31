module Tx
  module Actions
    module Authors
      class Index < Hanami::Action
        def handle(request, response)
          authors = AuthorRepository.new.all

          response.render(
            view: Tx::Views::Authors::Index.new,
            context: { authors: authors }
          )
        end
      end
    end
  end
end
