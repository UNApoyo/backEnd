class Carrera < ApplicationRecord
	has_many :enfoque
	has_many :trabajo_de_grado
	has_many :carrera_investigacion
	has_many :grupo_de_investigacion, through :carrera_investigacion
	has_many :carrera_materium
	has_many :materium, through :carrera_materium

	validates :nombre,:description,presence: true
    validates :nombre, uniqueness: true
	validates :id,:description,presence: true
    validates :id, uniqueness: true
end
