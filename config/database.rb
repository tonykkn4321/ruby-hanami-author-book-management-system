# config/database.rb

require 'hanami/setup'
require 'hanami/model'

env = ENV['HANAMI_ENV'] || 'development'

Hanami.configure do
  database_url = case env
                 when 'development'
                   "mysql2://root:Aa161616@localhost/author_book_management_system"
                 when 'test'
                   "sqlite://db/test.sqlite"
                 when 'production'
                   ENV['DATABASE_URL'] # Railway PostgreSQL URL
                 end

  model.adapter = {
    adapter: env == 'production' ? 'postgres' : 'mysql',
    url: database_url,
    sslmode: env == 'production' ? 'require' : 'disable'
  }

  model.migration = 'config/db/migrate'  # Update here
  model.schema     = 'db/schema.sql'
end