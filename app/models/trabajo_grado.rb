class TrabajoGrado < ApplicationRecord
	has_many :profesor_investigacions, dependent: :destroy
	has_many :profesors, through: :profesor_investigacions
	belongs_to :carrera

  validates :nombre, presence: true

	def self.get_grados
	  self.select("nombre").paginate(:page => 2, :per_page => 30)
	end

	def self.of_carrera(carrera)
		self.joins(:carrera).where(carreras: {nombre: carrera}).paginate(:page => 2, :per_page => 30)
	end

end
