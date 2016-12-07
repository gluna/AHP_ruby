class PrioridadeRelativa < ApplicationRecord
  belongs_to :projeto
  belongs_to :alternativa
  belongs_to :criterio
end
