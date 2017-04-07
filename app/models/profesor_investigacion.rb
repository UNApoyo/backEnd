class ProfesorInvestigacion < ApplicationRecord
  has_many :profesors
  has_many :grupo_investigacions
end
