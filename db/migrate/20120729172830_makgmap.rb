class Makgmap < ActiveRecord::Migration
  def up
    add_column :requests, :latitude,  :float #you can change the name, see wiki
    add_column :requests, :longitude, :float #you can change the name, see wiki
    add_column :requests, :gmaps, :boolean #not mandatory, see wiki
  end

  def down
  end
end
