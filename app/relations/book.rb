# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Book < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :book, infer: true
        field :title, Types::String
        field :year, Types::Int
        field :author_id, Types::Int
      end
    end
  end
end
