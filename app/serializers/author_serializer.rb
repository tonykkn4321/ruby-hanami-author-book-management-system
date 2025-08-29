class AuthorSerializer
  def self.serialize(author)
    {
      id: author.id,
      name: author.name
    }
  end
end
