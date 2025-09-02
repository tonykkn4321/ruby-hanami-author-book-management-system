# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class BookRepositoryRepo < RubyHanamiAuthorBookManagementSystem::DB::Repo
      # Example: Find books by a specific author
      def find_by_author(author_id)
        where(author_id: author_id).to_a
      end

      # Example: Find all books published in a specific year
      def find_by_year(year)
        where(year: year).to_a
      end
    end
  end
end
