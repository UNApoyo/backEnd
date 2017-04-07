class Estudiante < ApplicationRecord
	has_many :historia_academica, dependent: :destroy
  has_many :asignatura, through: :historia_academica
  
  validates :porcentaje_carrera, presence: true, inclusion: {in: 0..100}
  validates :creditos_disponibles, presence: true
  validates :creditos_aprobados, presence: true
  validates :creditos_inscritos, presence: true
  validates :creditos_pendientes, presence: true
end
