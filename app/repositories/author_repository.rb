module Tx::Repositories
  class AuthorRepository < ROM::Repository[:authors]
    commands :create, update: :by_pk, delete: :by_pk

    def all
      authors.to_a
    end

    def find(id)
      authors.by_pk(id).one
    end
  end
end
