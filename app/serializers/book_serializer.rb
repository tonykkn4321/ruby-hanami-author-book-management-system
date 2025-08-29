class BookSerializer
  def self.serialize(book)
    {
      id: book.id,
      title: book.title,
      author_id: book.author_id
    }
  end
end
