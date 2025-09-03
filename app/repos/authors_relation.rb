# app/repos/authors_relation.rb

module RubyHanamiAuthorBookManagementSystem
  module Repos
    class AuthorsRelation < Hanami::Model::Relation[:sql]
      # Define the table name
      schema(:authors, infer: true) do
        attribute :id, Types::Int
        attribute :first_name, Types::String
        attribute :last_name, Types::String
      
  
        # Add other attributes as necessary
        # Add more attributes based on your database schema
      end
    end
  end
end
