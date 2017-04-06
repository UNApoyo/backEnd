class ProfesorInvestigacion < ApplicationRecord
  belongs_to :profesor
  belongs_to :investigacion
end
