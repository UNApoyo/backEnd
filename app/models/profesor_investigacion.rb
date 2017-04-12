class ProfesorInvestigacion < ApplicationRecord
  belongs_to :profesor
  belongs_to :grupo_investigacion
end
