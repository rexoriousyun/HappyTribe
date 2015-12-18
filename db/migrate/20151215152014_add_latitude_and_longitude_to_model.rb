class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :opportunities, :latitude, :float
    add_column :opportunities, :longitude, :float
  end
end
