class DropGupoUsuarios < ActiveRecord::Migration[5.0]
  def change
    drop_table :grupo_usuarios
  end
end
