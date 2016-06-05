class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.boolean :public
      t.integer :user_id
      t.integer :work_space_id

      t.timestamps
    end
    add_index :bookings, :user_id
    add_index :bookings, :work_space_id
  end
end
