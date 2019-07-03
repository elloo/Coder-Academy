class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.references :buyer, foreign_key: true
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
