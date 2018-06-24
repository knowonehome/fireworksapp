class CreateFireworkDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :firework_details do |t|
      t.boolean :stash
      t.integer :quantity
      t.decimal :price
      t.belongs_to :firework_year, index: true
      t.belongs_to :firework, index: true
      t.timestamps
    end
  end
end
