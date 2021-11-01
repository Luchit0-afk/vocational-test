# frozen_string_literal: true

Sequel.migration do
  up do
    create_table(:choices) do
      primary_key   :id
      String        :text
      foreign_key   :question_id,  :questions
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:choices)
  end
end
