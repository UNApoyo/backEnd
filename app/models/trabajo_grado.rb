class TrabajoGrado < ApplicationRecord
	has_many :profesor_grados, dependent: :destroy
	has_many :profesors, through: :profesor_grados
	belongs_to :carrera

  validates :nombre, presence: true

	def self.get_grados(page,per_page)
	  self.select("nombre").paginate(:page => page, :per_page => per_page)
	end

	def self.of_carrera(carrera,page,per_page)
		self.joins(:carrera).where(carreras: {nombre: carrera}).paginate(:page => page, :per_page => per_page)
	end

	def self.sugerencia_trabajo_grado(page,per_page,estudiante)
		 p = Estudiante.porcentaje_ca(estudiante)
		 if p[0].nil?
			 return nil
		 else
			 if p[0] >= 56
				 self.joins(:carrera, :profesors).paginate(:page => page, :per_page => per_page).pluck("trabajo_grados.nombre,profesors.nombre")
			 end
		 end
	end

end
