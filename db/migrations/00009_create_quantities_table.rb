Sequel.migration do
  up do
    create_table(:quantities) do
      primary_key   :id
      foreign_key   :career_id, :careers
      DateTime      :fecha
      Integer       :cant
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:quantities)
  end
end