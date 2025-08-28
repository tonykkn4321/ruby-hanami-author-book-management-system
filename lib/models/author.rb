# lib/models/author.rb

class Author
  include Hanami::Entity

  attributes do
    attribute :id, Types::Int
    attribute :first_name, Types::String
    attribute :last_name, Types::String
  end
end