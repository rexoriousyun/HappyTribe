class RenameImageUrlToEventImage < ActiveRecord::Migration
  def change
    rename_column :events, :image_url, :event_image
  end
end
