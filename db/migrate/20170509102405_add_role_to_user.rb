class AddRoleToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin_role, :boolean
    add_column :users, :user_role, :boolean
  end
end
