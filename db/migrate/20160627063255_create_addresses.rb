class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zipcode
      t.string :addressable_type, null: false, limit: 25
      t.integer :addressable_id, null: false

      t.timestamps
    end

    add_index :addresses, [ :addressable_type, :addressable_id]
  end
end
