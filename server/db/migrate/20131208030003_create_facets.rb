class CreateFacets < ActiveRecord::Migration
  def change
    create_table :facets do |t|
      t.string :title
      t.integer :facet_type

      t.timestamps
    end
  end
end
