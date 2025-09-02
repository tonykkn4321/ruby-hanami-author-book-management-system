# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Author < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :author, infer: true
    end
  end
end
