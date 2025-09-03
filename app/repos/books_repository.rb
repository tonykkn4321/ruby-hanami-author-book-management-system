# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class BooksRepository < RubyHanamiAuthorBookManagementSystem::DB::Repo
     def initialize(rom)
      @rom = rom
     end

     # Retrieve all books
     def all
      @rom.relation(:books).to_a # Fetch all books as an array
     end

     # Create a new book
     def create(book_params)
      @rom.relation(:books).insert(book_params) # Insert new book
     end
    end
  end
end
