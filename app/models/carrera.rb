class Carrera < ApplicationRecord
	has_many :enfoque
	has_many :trabajo_de_grado
	has_many :carrera_investigacion
	has_many :grupo_investigacion, through: :carrera_investigacion
	has_many :carrera_materium
	has_many :materium, through: :carrera_materium
	has_many :estudiante

	validates :nombre,presence: true
    validates :nombre, uniqueness: true
	
	
	
end
