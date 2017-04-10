class ProfesorInvestigacion < ApplicationRecord
  belongs_to :profesors
  belongs_to :grupo_investigacions
end
