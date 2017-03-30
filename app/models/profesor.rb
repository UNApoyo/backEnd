class Profesor < ApplicationRecord
	has_many :profesor_investigacion
	has_many :grupo_investigacion,through: :profesor_investigacion
	has_many :profesor_grado
	has_many :trabajo_grado,through: :profesor_grado

	validates :nombre,presence: true
end
