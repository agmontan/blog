class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :articulo
      t.integer :like

      t.timestamps
    end
  end
end
