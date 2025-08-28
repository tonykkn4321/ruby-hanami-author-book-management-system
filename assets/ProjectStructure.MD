# Project structure:
author_book_management_system/
├── app/
│   ├── web/              # Web app
│   └── api/              # API app
├── config/
│   ├── database.rb       # Database configuration
│   └── db/
│       ├── migrate/      # Database migrations
│       └── seeds.rb      # Seed data
├── lib/
│   └── models/           # Models
│       ├── author.rb
│       └── book.rb
├── Procfile               # Procfile for Railway deployment
└── Gemfile