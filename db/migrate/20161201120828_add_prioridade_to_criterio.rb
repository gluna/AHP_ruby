class AddPrioridadeToCriterio < ActiveRecord::Migration[5.0]
  def change
    add_column :criterios, :prioridade, :float
  end
end
