class TrabajoGrado < ApplicationRecord
	has_many :profesor_investigacions, dependent: :destroy
	has_many :profesors, through: :profesor_investigacions
	belongs_to :carrera

  validates :nombre, presence: true

	def self.get_grados(page,per_page)
	  self.select("nombre").paginate(:page => page, :per_page => per_page)
	end

	def self.of_carrera(carrera,page,per_page)
		self.joins(:carrera).where(carreras: {nombre: carrera}).paginate(:page => page, :per_page => per_page)
	end

end
