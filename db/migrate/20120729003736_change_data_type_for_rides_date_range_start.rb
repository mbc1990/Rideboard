class ChangeDataTypeForRidesDateRangeStart < ActiveRecord::Migration
  def up
    change_table :rides do |t|
        t.change :date_range_start, :date
        t.change :date_range_end, :date
    end
  end

  def down
  end
end
