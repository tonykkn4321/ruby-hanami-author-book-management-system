# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class BooksRepo < RubyHanamiAuthorBookManagementSystem::DB::Repo
      def all
        authors.to_a
      end

      private

      def authors
        root
      end
    end
  end
end
