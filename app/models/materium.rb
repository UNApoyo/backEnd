class Materium < ApplicationRecord
	has_many :carrera_materium
	has_many :carrera,through: :carrera_materium
	has_many :enfoque_materium
	has_many :enfoque,through: :enfoque_materium
	has_many :materia_investigacion
	has_many :grupo_de_investigacion,through :materia_investigacion

	validates :nombre,presence: true
    validates :nombre, uniqueness: true

end
