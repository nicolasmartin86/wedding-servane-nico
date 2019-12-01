class AddPhotoToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :photo, :string
  end
end
