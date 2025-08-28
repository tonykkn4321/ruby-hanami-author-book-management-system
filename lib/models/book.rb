# lib/models/book.rb

class Book
  include Hanami::Entity

  attributes do
    attribute :id, Types::Int
    attribute :title, Types::String
    attribute :year, Types::Int
    attribute :author_id, Types::Int
  end
end