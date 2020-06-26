class AddSlugToFireworks < ActiveRecord::Migration[6.0]
  def change
    add_column :fireworks, :slug, :string
    add_index :fireworks, :slug, unique: true
  end
end
