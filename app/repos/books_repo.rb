# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class BooksRepo < RubyHanamiAuthorBookManagementSystem::DB::Repo
      def all
        books.to_a
      end

      private

      def books
        root
      end
    end
  end
end
