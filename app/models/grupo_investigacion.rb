class GrupoInvestigacion < ApplicationRecord
	has_many :carrera_investigacion
	has_many :carrera,through :carrera_investigacion
	has_many :profesor_investigacion
	has_many :profesor,through :profesor_investigacion
	has_many :materia_investigacion
	has_many :materia,through :materia_investigacion

	validates :nombre,:description,presence: true
    validates :nombre, uniqueness: true
end
