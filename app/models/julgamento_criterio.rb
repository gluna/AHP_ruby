class JulgamentoCriterio < ApplicationRecord
  belongs_to :projeto
  belongs_to :criterio_1, class_name: "Criterio", foreign_key: "criterio_1_id"
  belongs_to :criterio_2, class_name: "Criterio", foreign_key: "criterio_2_id"
end
