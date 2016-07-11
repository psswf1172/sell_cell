class CreateGalaxies < ActiveRecord::Migration
  def change
    create_table :galaxies do |t|
      t.string :name
      t.string :network
      t.integer :size
      t.string :image
      t.monetize :price

      t.timestamps null: false
    end
  end
end
