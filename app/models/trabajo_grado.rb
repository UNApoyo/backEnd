class TrabajoGrado < ApplicationRecord
	has_many :profesor_investigacions, dependent: :destroy
	has_many :profesors, through: :profesor_investigacions
	belongs_to :carrera

  validates :nombre, presence: true

	def self.get_grados
	  self.select("nombre")
	end

	def self.of_carrera
		self.joins(:carrera).where(carreras: {nombre: 'Ingenieria de Sistemas y Computacion'})
	end

end
