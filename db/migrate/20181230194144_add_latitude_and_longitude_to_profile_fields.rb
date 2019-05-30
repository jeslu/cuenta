class AddLatitudeAndLongitudeToProfileFields < ActiveRecord::Migration[5.1]
  def change
    add_column :profile_fields, :latitude, :float
    add_column :profile_fields, :longitude, :float
  end
end
