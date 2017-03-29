class Profesor < ApplicationRecord
	has_many :profesor_investigacion
	has_many :grupo_de_investigacion,through :profesor_investigacion
	has_many :profesor_grado
	has_many :trabajo_de_grado,through :profesor_grado

	validates :nombre,presence: true
end
