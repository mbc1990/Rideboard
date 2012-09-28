class RemoveRequestFromRides < ActiveRecord::Migration
  def up
    remove_column :rides, :Request
      end

  def down
    add_column :rides, :Request, :boolean
  end
end
