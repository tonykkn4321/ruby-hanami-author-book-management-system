# config/rom.rb (or similar file)
require 'rom'
require 'rom-sql'

# Initialize ROM
rom = ROM.container(:sql, 'sqlite://db/development.sqlite3') do |config|
  config.relation(:authors) do
    schema(infer: true) # Automatically infer schema from the database
  end

  # You can define other relations here as necessary
end

# Make sure to store the rom instance for use in repositories
