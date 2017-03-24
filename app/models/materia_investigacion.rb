class MateriaInvestigacion < ApplicationRecord
  belongs_to :materia
  belongs_to :grupo_investigacion
end
