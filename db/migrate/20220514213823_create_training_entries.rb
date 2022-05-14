class CreateTrainingEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :training_entries do |t|
      t.integer :when, null: false
      t.string :feeling, null: false

      t.timestamps
    end
  end
end
