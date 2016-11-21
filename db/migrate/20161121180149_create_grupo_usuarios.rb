class CreateGrupoUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_usuarios do |t|
      t.belongs_to :grupo_avaliacao, foreign_key: true
      t.belongs_to :usuario, foreign_key: true

      t.timestamps
    end
  end
end
