class AddProjetoToAlternativa < ActiveRecord::Migration[5.0]
  def change
    add_reference :alternativas, :projeto, foreign_key: true
  end
end
