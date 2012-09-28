class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.date :date_range_start
      t.date :date_range_end
      t.text :comments
      t.string :address

      t.timestamps
    end
  end
end
