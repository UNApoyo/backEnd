class GrupoInvestigacion < ApplicationRecord
	has_many :area_investigacions, dependent: :destroy
	has_many :carrera_investigacions, dependent: :destroy
	has_many :profesor_investigacions, dependent: :destroy
	has_many :areas, through: :area_investigacions
	has_many :carreras, through: :carrera_investigacions
	has_many :profesors, through: :profesor_investigacions

	def self.get_investigaciones
	  self.select("nombre")
	end

	def self.of_carrera
		self.joins(:carrera_investigacions).where(carrera_investigacions: {carrera_id: 1})
	end
	def self.of_area
		self.joins(:area_investigacions).where(area_investigacions: {area_id: 1})
	end
end
