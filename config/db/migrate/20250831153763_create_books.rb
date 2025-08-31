ROM::SQL.migration do
  change do
    create_table :books do
      primary_key :id
      column :title, String, null: false
      column :year, Integer, null: false
      foreign_key :author_id, :authors, on_delete: :cascade
    end
  end
end
