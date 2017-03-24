class CarreraInvestigacion < ApplicationRecord
  has_many :carrera
  has_many :grupo_investigacion
end
