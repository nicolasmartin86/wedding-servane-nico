class AddLogoToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :logo, :string
  end
end
