class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.text :address
      t.boolean :is_coming
      t.boolean :is_accompanied
      t.string :accompanying_first_name
      t.string :accompanying_last_name
      t.boolean :is_present_for_brunch
      t.text :comments

      t.timestamps
    end
  end
end
