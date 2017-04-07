class ProfesorInvestigacion < ApplicationRecord
  has_many :profesor
  has_many :grupo_investigacion
end
