# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Actions
    module Authors
      class Show < RubyHanamiAuthorBookManagementSystem::Action
        def handle(request, response)
          @author = AuthorRepository.new.find(request.params[:id])
          response.body = @author.to_json
        end
      end
    end
  end
end
