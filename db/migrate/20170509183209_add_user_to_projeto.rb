class AddUserToProjeto < ActiveRecord::Migration[5.0]
  def change
    add_reference :projetos, :user, foreign_key: true
  end
end
