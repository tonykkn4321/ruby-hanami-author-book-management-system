# Project structure:
app/
├── actions/
│   ├── authors/
│   │   ├── index.rb
│   │   ├── show.rb
│   │   ├── create.rb
│   │   ├── update.rb
│   │   └── delete.rb
│   └── books/
│       ├── index.rb
│       ├── show.rb
│       ├── create.rb
│       ├── update.rb
│       └── delete.rb
├── views/
│   ├── authors/
│   │   ├── index.rb
│   │   ├── show.rb
│   │   ├── create.rb
│   │   ├── update.rb
│   │   └── delete.rb
│   └── books/
│       ├── index.rb
│       ├── show.rb
│       ├── create.rb
│       ├── update.rb
│       └── delete.rb
├── relations/
│   ├── author.rb
│   └── book.rb
└── repos/
    ├── author_repository.rb
    └── book_repository.rb

config/
├── routes.rb
├── database.yml
└── db/
    ├── migrate/
    │   ├── 2025xxxxxx_create_authors.rb
    │   └── 2025xxxxxx_create_books.rb
    └── schema.sql (optional)




# Gemfile:
ruby '3.4.5'
gem 'pg'

# Generate models:
hanami generate relation author 
hanami generate relation book 

# Generate repos:
hanami generate repo author_repository
hanami generate repo book_repository


# Generate actions:
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
