class GrupoAvaliacao < ApplicationRecord
  belongs_to :projeto
  has_many :usuarios
end
