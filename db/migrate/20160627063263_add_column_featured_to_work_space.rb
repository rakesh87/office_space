class AddColumnFeaturedToWorkSpace < ActiveRecord::Migration[5.0]
  def change
    add_column :work_spaces, :featured, :boolean, default: false
  end
end
