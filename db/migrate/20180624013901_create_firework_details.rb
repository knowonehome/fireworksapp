class CreateFireworkDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :firework_details do |t|
      t.boolean :stash
      t.integer :quantity
      t.decimal :price
      t.belongs_to :firework_year, index: true, foreign_key: true
      t.belongs_to :firework, index: true, foreign_key: true
      t.timestamps
    end
  end
end
