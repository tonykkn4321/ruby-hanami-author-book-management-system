# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Authors < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :authors, infer: true do
        attribute :first_name, Types::String
        attribute :last_name, Types::String
      end
    end
  end
end
