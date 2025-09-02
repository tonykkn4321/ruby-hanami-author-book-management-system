# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Books < RubyHanamiAuthorBookManagementSystem::DB::Relation
        schema :books, infer: true do
         attribute :title, Types::String
         attribute :year, Types::Int
         attribute :author_id, Types::Int
        
     end
    end
  end
end
