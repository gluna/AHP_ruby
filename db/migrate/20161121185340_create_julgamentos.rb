class CreateJulgamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :julgamentos do |t|
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :projeto, foreign_key: true
      t.belongs_to :criterio, foreign_key: true
      t.belongs_to :alternativa_1
      t.belongs_to :alternativa_2
      t.float :valor

      t.timestamps
    end
  end
end
