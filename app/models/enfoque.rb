class Enfoque < ApplicationRecord
	belongs_to :carrera
	has_many :enfoque_asignaturas, dependent: :destroy
	has_many :asignaturas, through: :enfoque_asignaturas
  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.of_carrera(carrera,page,per_page)
		self.joins(:carrera).where(carreras: {nombre: carrera}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_asignatura(asignatura,page,per_page)
		self.joins(:enfoque_asignaturas).where(enfoque_asignaturas: {asignatura_id: asignatura}).paginate(:page => page, :per_page => per_page)
	end


end
