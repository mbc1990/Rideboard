class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.boolean :request
      t.datetime :date_range_start
      t.datetime :date_range_end
      t.string :phash
      t.text :comments

      t.timestamps
    end
  end
end
