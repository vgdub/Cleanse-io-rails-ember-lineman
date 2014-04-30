class CreateCleanses < ActiveRecord::Migration
  def change
    create_table :cleanses do |t|
      t.integer :duration, default: 21
      t.date :start_date
      t.integer :user_id

      t.timestamps
    end
  end
end
