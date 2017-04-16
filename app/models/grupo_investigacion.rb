class GrupoInvestigacion < ApplicationRecord
	has_many :area_investigacions, dependent: :destroy
	has_many :carrera_investigacions, dependent: :destroy
	has_many :profesor_investigacions, dependent: :destroy
	has_many :areas, through: :area_investigacions
	has_many :carreras, through: :carrera_investigacions
	has_many :profesors, through: :profesor_investigacions

	def self.get_investigaciones
	  self.select("nombre").paginate(:page => 2, :per_page => 30)
	end

	def self.of_carrera(carrera,page,per_page)
		self.joins(:carrera_investigacions).where(carrera_investigacions: {carrera_id: carrera}).paginate(:page => page, :per_page => per_page)
	end
	def self.of_area(area,page,per_page)
		self.joins(:area_investigacions).where(area_investigacions: {area_id: area}).paginate(:page => page, :per_page => per_page)
	end
end
