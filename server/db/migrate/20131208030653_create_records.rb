class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.decimal :value
      t.integer :facet_id
      t.references :recordable, polymorphic: true

      t.timestamps
    end
  end
end
