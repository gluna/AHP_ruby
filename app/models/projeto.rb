class Projeto < ApplicationRecord
  has_many :alternativas
  has_many :criterios
  has_many :grupo_avaliacaos
  has_many :julgamentos
  has_many :julgamento_criterios
  has_many :prioridade_relativas
end
