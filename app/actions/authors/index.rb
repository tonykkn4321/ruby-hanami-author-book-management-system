module Tx
  module Actions
    module Authors
      class Index < Hanami::Action
        def handle(request, response)
          authors = ::AuthorRepository.new.all

          response.status = 200
          response.body = authors.to_json
        end
      end
    end
  end
end
