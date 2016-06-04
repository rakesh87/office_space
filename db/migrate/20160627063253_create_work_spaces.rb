class CreateWorkSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :work_spaces do |t|
      t.string :name
      t.string :description
      t.integer :no_of_seats

      t.timestamps
    end
  end
end
