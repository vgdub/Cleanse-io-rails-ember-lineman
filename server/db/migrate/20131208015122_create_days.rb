class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.text :note
      t.integer :cleanse_id

      t.timestamps
    end
  end
end
