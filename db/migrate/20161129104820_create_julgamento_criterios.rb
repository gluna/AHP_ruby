class CreateJulgamentoCriterios < ActiveRecord::Migration[5.0]
  def change
    create_table :julgamento_criterios do |t|
      t.belongs_to :projeto, foreign_key: true
      t.belongs_to :criterio_1, foreign_key: true
      t.belongs_to :criterio_2, foreign_key: true
      t.float :valor

      t.timestamps
    end
  end
end
