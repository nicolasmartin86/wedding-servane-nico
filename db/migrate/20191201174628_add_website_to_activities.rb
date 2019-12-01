class AddWebsiteToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :website_url, :string
  end
end
