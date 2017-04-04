class GrupoInvestigacion < ApplicationRecord
	has_many :carrera_investigacion
	has_many :carrera,through :carrera_investigacion
	has_many :profesor_investigacion
	has_many :profesor,through :profesor_investigacion
	has_many :materia_investigacion
	has_many :materia,through :materia_investigacion

	validates :nombre,:description,presence: true
    validates :nombre, uniqueness: true


		def get_grupo_investigacion_carrera(id_carrera)
				grupos = carrera_investigacion.where(:carrera_id = id_carrera).select("grupo_investigacion_id")
				name_grupos = grupo_investigacion.where(nombre: grupos)
				return name_grupos
		end



end
