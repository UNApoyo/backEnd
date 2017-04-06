class Estudiante < ApplicationRecord
  validates :nombre, presence: true, format:{with: /\A[a-zA-Z]+\z/, on : :create}
  validates :porcentaje_carrera, presence: true, inclusion: {in: 0..100}
  validates :creditos_disponibles, presence: true
  validates :creditos_aprobados, presence: true
  validates :creditos_inscritos, presence: true
  validates :creditos_pendientes, presence: true
end
