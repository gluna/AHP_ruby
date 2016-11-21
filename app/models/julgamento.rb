class Julgamento < ApplicationRecord
  belongs_to :usuario
  belongs_to :projeto
  belongs_to :alternativa
  belongs_to :alternativa
end
