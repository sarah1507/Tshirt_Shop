class CreateTshirts < ActiveRecord::Migration[5.1]
  def change
    create_table :tshirts do |t|
      t.string :size
      t.string :color
      t.integer :stock
      t.float :price

      t.timestamps
    end
  end
end
