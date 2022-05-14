class AddEntriesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :nutrition_entries do |t|
      t.timestamp :consumed_at, null: false
      t.string :entry, null: false

      t.timestamps
    end

  end
end
