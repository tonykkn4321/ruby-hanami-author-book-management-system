# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Author < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :author, infer: true do
        field :first_name, Types::String
        field :last_name, Types::String
      end
    end
  end
end
