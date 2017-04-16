class Area < ApplicationRecord
	has_many :asignaturas
	has_many :area_investigacions, dependent: :destroy
	has_many :grupo_investigacions, through: :area_investigacions

	validates :nombre, presence: true#, uniqueness: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.get_areas(page,per_page)
	  self.select("nombre").paginate(:page => page, :per_page => per_page)
	end

	def self.of_asignatura(asignatura,page,per_page)
		self.joins(:asignaturas).where(asignaturas: {nombre: asignatura}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_investigacion(id,page,per_page)
		self.joins(:area_investigacions).where(area_investigacions: {grupo_investigacion_id: id}).paginate(:page => page, :per_page => per_page)
	end

end
