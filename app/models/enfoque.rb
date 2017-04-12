class Enfoque < ApplicationRecord
	belongs_to :carrera
	has_many :enfoque_asignaturas, dependent: :destroy
	has_many :asignaturas, through: :enfoque_asignaturas
  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.of_carrera(carrera)
		self.joins(:carrera).where(carreras: {nombre: carrera})
	end

	def self.of_asignatura(asignatura)
		self.joins(:enfoque_asignaturas).where(enfoque_asignaturas: {asignatura_id: asignatura})
	end


end
