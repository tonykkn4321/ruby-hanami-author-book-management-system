# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Author < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :author, infer: true do
        attribute :first_name, Types::String
        attribute :last_name, Types::String
      end
    end
  end
end
