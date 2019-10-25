class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :title
      t.text :information
      t.string :subtitle
      t.text :address
      t.string :photo
      t.string :phone_number
      t.string :website_url
      t.string :price
      t.string :place_type

      t.timestamps
    end
  end
end
