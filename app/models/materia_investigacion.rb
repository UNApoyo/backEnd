class MateriaInvestigacion < ApplicationRecord
  has_many :materium
  has_many :grupo_investigacion
end
