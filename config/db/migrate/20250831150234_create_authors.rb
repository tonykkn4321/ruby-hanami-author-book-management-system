ROM::SQL.migration do
  change do
    create_table :authors do
      primary_key :id
      column :first_name, String, null: false
      column :last_name, String, null: false
    end
  end
end
