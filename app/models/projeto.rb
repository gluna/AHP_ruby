class Projeto < ApplicationRecord
  has_many :criterios
  has_many :alternativas
  has_many :grupo_criterios
end
