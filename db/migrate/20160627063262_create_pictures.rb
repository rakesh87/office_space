class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :picturable_type, limit: 25
      t.integer :picturable_id

      t.timestamps
    end

    add_index :pictures, [ :picturable_type, :picturable_id]

  end
end
