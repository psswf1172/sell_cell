class CreateIphones < ActiveRecord::Migration
  def change
    create_table :iphones do |t|
      t.string :name
      t.string :network
      t.integer :size
      t.string :image
      t.monetize :price
      t.timestamps null: false
    end
  end
end
