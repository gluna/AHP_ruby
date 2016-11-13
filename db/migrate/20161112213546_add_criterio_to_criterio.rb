class AddCriterioToCriterio < ActiveRecord::Migration[5.0]
  def change
    add_reference :criterios, :criterio, foreign_key: true
  end
end
