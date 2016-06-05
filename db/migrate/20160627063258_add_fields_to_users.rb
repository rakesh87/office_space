class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :company_name, :string
    add_column :users, :description, :text, limit: 4000
    add_column :users, :social_type, :string
    add_column :users, :social_token, :string
  end
end
