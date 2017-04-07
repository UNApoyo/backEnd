class CarreraInvestigacion < ApplicationRecord
  has_many :carreras
  has_many :grupo_investigacions
end
