class CreateFireworks < ActiveRecord::Migration[6.0]
  def change
    create_table :fireworks do |t|
      t.string :name
      t.string :style
      t.text :description

      t.timestamps
    end
  end
end
