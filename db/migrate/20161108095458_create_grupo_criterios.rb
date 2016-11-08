class CreateGrupoCriterios < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_criterios do |t|
      t.string :nome
      t.float :peso

      t.timestamps
    end
  end
end
