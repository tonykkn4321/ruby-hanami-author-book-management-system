module Tx
  module Views
    module Authors
      class Index < Hanami::View
        def locals(context)
          {
            authors: context[:authors]
          }
        end
      end
    end
  end
end
