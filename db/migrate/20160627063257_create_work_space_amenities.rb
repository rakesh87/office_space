class CreateWorkSpaceAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :work_space_amenities do |t|
      t.integer :work_space_id
      t.integer :amenity_id

      t.timestamps
    end
  end
end
