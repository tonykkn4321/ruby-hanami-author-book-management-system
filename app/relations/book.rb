# frozen_string_literal: true

module RubyHanamiAuthorBookManagementSystem
  module Relations
    class Book < RubyHanamiAuthorBookManagementSystem::DB::Relation
      schema :book, infer: true
    end
  end
end
