class GrupoUsuario < ApplicationRecord
  belongs_to :grupo_avaliacao
  belongs_to :usuario
end
