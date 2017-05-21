class DropUsuarios < ActiveRecord::Migration[5.0]
  def change
    drop_table :usuarios
  end
end
