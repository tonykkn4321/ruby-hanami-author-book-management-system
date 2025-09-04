# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Books < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :books, infer: true
    end
  end
end
