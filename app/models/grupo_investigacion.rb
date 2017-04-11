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
end
