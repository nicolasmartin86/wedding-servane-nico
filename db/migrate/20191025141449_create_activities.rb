class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :tab
      t.text :information
      t.text :address
      t.string :phone_number

      t.timestamps
    end
  end
end
