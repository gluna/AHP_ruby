class AddProjetoToCriterio < ActiveRecord::Migration[5.0]
  def change
    add_reference :criterios, :projeto, foreign_key: true
  end
end
