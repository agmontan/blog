class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comentario
      t.integer :post_id
      t.integer :like

      t.references :post, index: true

      t.timestamps
    end
  end
end
