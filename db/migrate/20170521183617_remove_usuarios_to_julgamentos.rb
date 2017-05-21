class RemoveUsuariosToJulgamentos < ActiveRecord::Migration[5.0]
  def change
    remove_column :julgamentos, :usuario_id
  end
end
