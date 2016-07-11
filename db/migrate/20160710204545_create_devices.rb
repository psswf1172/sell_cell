class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :model
      t.string :name
      t.string :network
      t.integer :size
      t.string :image
      t.monetize :price

      t.timestamps null: false
    end
  end
end
