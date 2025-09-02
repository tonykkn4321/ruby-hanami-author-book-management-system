# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Update < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          author = AuthorRepository.new.find(request.params[:id])
          author.assign_attributes(author_params(request))

          if AuthorRepository.new.update(author)
            response.body = author.to_json
          else
            response.status = 422
            response.body = { error: 'Failed to update author.' }.to_json
          end
        end

        private

        def author_params(request)
          request.params[:author].slice(:first_name, :last_name)
        end
      end
    end
  end
end
