class Projeto < ApplicationRecord
  has_many :alternativas
  has_many :criterios
  has_many :grupo_avaliacaos
end
