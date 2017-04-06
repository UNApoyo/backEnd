class Carrera < ApplicationRecord
  belongs_to :enfoque
  belongs_to :trabajo_grado
  belongs_to :estudiante
end
