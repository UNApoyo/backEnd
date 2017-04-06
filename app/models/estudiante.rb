class Estudiante < ApplicationRecord
  #validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
  validates :porcentaje_carrera, presence: true, inclusion: {in: 0..100}
  validates :creditos_disponibles, presence: true
  validates :creditos_aprobados, presence: true
  validates :creditos_inscritos, presence: true
  validates :creditos_pendientes, presence: true
end
