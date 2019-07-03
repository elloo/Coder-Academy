class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :picture
      t.text :description
      t.string :colour
      t.string :size
      t.string :condition
      t.float :price
      t.text :location
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
