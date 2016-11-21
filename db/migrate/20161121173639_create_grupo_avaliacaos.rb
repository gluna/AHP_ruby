class CreateGrupoAvaliacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_avaliacaos do |t|
      t.string :nome
      t.float :peso
      t.belongs_to :projeto, foreign_key: true
      t.boolean :ativo

      t.timestamps
    end
  end
end
