# Gemfile:
ruby '3.4.5'

# Generate Resources:
hanami generate action authors.index
hanami generate action authors.create
hanami generate action authors.show
hanami generate action authors.update
hanami generate action authors.delete

hanami generate action books.index
hanami generate action books.create
hanami generate action books.show
hanami generate action books.update
hanami generate action books.delete


# Create Migrations:
hanami generate migration create_authors
hanami generate migration create_books

# After modified the create_authors and create_books:
hanami db prepare (for localhost)

# Railway customer start command:
hanami db migrate
