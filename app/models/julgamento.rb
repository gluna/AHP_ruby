class Julgamento < ApplicationRecord
  belongs_to :usuario
  belongs_to :projeto
  belongs_to :alternativa_1, class_name: "Alternativa", foreign_key: "alternativa_id"
  belongs_to :alternativa_2, class_name: "Alternativa", foreign_key: "alternativa_id"
  belongs_to :criterio
end
