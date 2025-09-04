# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Authors < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :authors, infer: true
    end
  end
end
