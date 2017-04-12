class Area < ApplicationRecord
	has_many :asignaturas
	has_many :area_investigacions, dependent: :destroy
	has_many :grupo_investigacions, through: :area_investigacions

	validates :nombre, presence: true#, uniqueness: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.get_areas
	  self.select("nombre")
	end

	def self.of_asignatura
		self.joins(:asignaturas).where(asignaturas: {nombre: 'Bases de Datos'})
	end

	def self.of_investigacion
		self.joins(:area_investigacions).where(area_investigacions: {grupo_investigacion_id: 1})
	end

end
