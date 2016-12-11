class AddPrioridadeGlobalToAlternativa < ActiveRecord::Migration[5.0]
  def change
    add_column :alternativas, :prioridade_global, :float
  end
end
