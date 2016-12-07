class CreatePrioridadeRelativas < ActiveRecord::Migration[5.0]
  def change
    create_table :prioridade_relativas do |t|
      t.belongs_to :projeto, foreign_key: true
      t.belongs_to :alternativa, foreign_key: true
      t.belongs_to :criterio, foreign_key: true
      t.float :valor

      t.timestamps
    end
  end
end
