class Estudiante < ApplicationRecord
  belongs_to :carrera
	has_many :historia_academicas, dependent: :destroy
	has_many :asignaturas, through: :historia_academicas

  validates :porcentaje_carrera, presence: true, inclusion: {in: 0..100}
  validates :creditos_disponibles, presence: true
  validates :creditos_aprobados, presence: true
  validates :creditos_inscritos, presence: true
  validates :creditos_pendientes, presence: true

  def self.porcentaje_ca(estudiante)
    self.joins(:historia_academicas).select("estudiantes.porcentaje_carrera").where(historia_academicas:{estudiante_id: estudiante}).uniq.pluck("porcentaje_carrera")
  end

end
