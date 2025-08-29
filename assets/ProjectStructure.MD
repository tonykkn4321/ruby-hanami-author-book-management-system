# Project structure:
author_book_management_system/
hanami_api/
├── app/
│   ├── controllers/
│   │   ├── authors_controller.rb
│   │   └── books_controller.rb
│   ├── models/
│   │   ├── author.rb
│   │   └── book.rb
│   ├── views/
│   └── serializers/
│       ├── author_serializer.rb
│       └── book_serializer.rb
├── config/
│   ├── database.yml
│   ├── routes.rb
│   └── initializers/
│       └── cors.rb
├── db/
│   ├── migrate/
│   │   ├── 001_create_authors.rb
│   │   └── 002_create_books.rb
│   └── seeds.rb
├── Gemfile
└── Rakefile

# Add to Gemfile:
ruby '3.4.5'
gem 'pg', '>= 1.2'  # For production on Railway
gem 'rack-cors', require: 'rack/cors'  # For CORS support
gem 'hanami-model'

# Run:
bundle install
bundle exec hanami db prepare
bundle exec hanami db seed
