# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class AuthorsRepositoryRepo < RubyHanamiAuthorBookManagementSystem::DB::Repo
     def initialize(rom)
      @rom = rom
     end

     # Retrieve all authors
     def all
      @rom.relation(:authors).to_a # Fetch all authors as an array
     end

     # Create a new author
     def create(author_params)
      @rom.relation(:authors).insert(author_params) # Insert new author
     end
    end
  end
end



