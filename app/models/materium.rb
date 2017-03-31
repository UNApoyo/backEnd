class Materium < ApplicationRecord
	has_many :carrera_materium
	has_many :carrera,through: :carrera_materium
	has_many :enfoque_materium
	has_many :enfoque,through: :enfoque_materium
	has_many :materia_investigacion
	has_many :grupo_investigacion,through :materia_investigacion
	#add tipo?
	validates :nombre,presence: true
  validates :nombre, uniqueness: true

	def porcentaje_disciplinares
		numDisc = Materium.group_by(:tipo).having("tipo = disciplinar").count.length
		numApproved = Materium.joins(:historia_academica).where("materia.tipo = disciplinar").count.length   #materia.tipo ? tipo
		#numApproved = HistoriaAcademicas.where("tipo = diciplinar").group(:tipo).count.length
		return numApproved/numDisc*100
	end
	def porcentaje_fundamentacion
			numFun = Materium.group_by(:tipo).having("tipo = fundamentacion").count.length
			numApproved = Materium.joins(:historia_academica).where("materia.tipo = fundamentacion").count.length
			return numApproved/numFun*100
	end
	def porcentaje_libre_eleccion
			numLib = Materium.where("tipo = libre").group(:tipo).count.length
			numApproved = Materium.joins(:historia_academica).where("materia.tipo = libre").count.length
			return numApproved/numLib*100
	end
	def get_prof_grado(grado)
			prof_id = profesor_grado.where(:trabajo_grado_id = grado)
			prof_name = profesor.where(:profesor_id = prof_id).select("nombre")
			return prof_name
	end
	def get_prof_investigacion(investigacion_id)
			prof_id = profesor_investigacion.where(:grupo_investigacion_id = investigacion_id)
			prof_name = profesor.where(:profesor_id = prof_id).select("nombre")
			return prof_name
	end
	def get_promedio_disc
			calificaciones = historia_academica.joins(:materia).where("materia.tipo = disciplinar").average("historia_academicas.calificacion")
			return calificaciones
	end
	def get_promedio_fun
			calificaciones = historia_academica.joins(:materia).where("materia.tipo = fundamentacion").average("historia_academicas.calificacion")
			return calificaciones
	end
	def get_promedio_lib
			calificaciones = historia_academica.joins(:materia).where("materia.tipo = libre").average("historia_academicas.calificacion")
			return calificaciones
	end
	def get_grupo_investigacion_carrera(id_carrera)
			grupos = carrera_investigacion.where(:carrera_id = id_carrera).select("grupo_investigacion_id")
			name_grupos = grupo_investigacion.where(nombre: grupos)
			return name_grupos
	end
end
