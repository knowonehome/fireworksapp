class CreateFireworkYears < ActiveRecord::Migration[5.2]
  def change
    create_table :firework_years do |t|
      t.integer :year
      t.timestamps
    end
  end
end
