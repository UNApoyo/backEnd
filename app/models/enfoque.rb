class Enfoque < ApplicationRecord
	belongs_to :carrera
	has_many :asignaturas, through: :enfoque_asignaturas
  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.of_carrera
		self.joins(:carrera).where(carreras: {nombre: 'Ingenieria de Sistemas y Computacion'})
	end

end
