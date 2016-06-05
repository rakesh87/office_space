class AddUserIdToWorkSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :work_spaces, :user_id, :integer
    add_column :work_spaces, :city_id, :integer
    add_index :work_spaces, :user_id
    add_index :work_spaces, :city_id
  end
end
