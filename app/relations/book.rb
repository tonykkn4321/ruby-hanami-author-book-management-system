# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Book < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :book, infer: true do
        attribute :title, Types::String
        attribute :year, Types::Int
        attribute :author_id, Types::Int
      end
    end
  end
end
