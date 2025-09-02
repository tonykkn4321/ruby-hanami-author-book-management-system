# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class AuthorRepositoryRepo < RubyHanamiAuthorBookManagementSystem::DB::Repo
      # Example: Find authors by last name
      def find_by_last_name(last_name)
        where(last_name: last_name).to_a
      end
    end
  end
end
