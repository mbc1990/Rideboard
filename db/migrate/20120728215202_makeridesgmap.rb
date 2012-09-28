class Makeridesgmap < ActiveRecord::Migration
  def up
    add_column :rides, :latitude,  :float #you can change the name, see wiki
    add_column :rides, :longitude, :float #you can change the name, see wiki
    add_column :rides, :gmaps, :boolean #not mandatory, see wiki
  end

  def down
    remove_column :rides, :latitude  #you can change the name, see wiki
    remove_column :rides, :longitude #you can change the name, see wiki
    remove_column :rides, :gmaps #not mandatory, see wiki
  end
end
