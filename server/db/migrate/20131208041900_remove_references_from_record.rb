class RemoveReferencesFromRecord < ActiveRecord::Migration
  def change
    remove_belongs_to :records, :recordable, polymorphic: true
    add_column :records, :day_id, :integer
  end
end
