class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :photo_url
      t.string :listing_url
      t.integer :zip
      t.integer :price
      t.boolean :available
      t.text :description

      t.timestamps null: false
    end
  end
end
