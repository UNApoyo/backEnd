class TrabajoGrado < ApplicationRecord
	has_many :profesor_grado
	has_many :profesor,through: :profesor_grado
	has_one :carrera

	validates :nombre,presence: true
end
