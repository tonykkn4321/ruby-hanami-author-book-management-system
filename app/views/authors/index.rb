module Tx
  module Views
    module Authors
      class Index
        include Hanami::View

        # Optional: define locals or helpers here
        def locals(context)
          {
            authors: context[:authors]
          }
        end
      end
    end
  end
end
