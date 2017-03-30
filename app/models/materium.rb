class Materium < ApplicationRecord
	has_many :carrera_materium
	has_many :carrera,through: :carrera_materium
	has_many :enfoque_materium
	has_many :enfoque,through: :enfoque_materium
	has_many :materia_investigacion
	has_many :grupo_investigacion,through :materia_investigacion

	validates :nombre,presence: true
  validates :nombre, uniqueness: true

	def porcentaje_disciplinares
		numDisc = materia.group_by(:tipo).having("tipo = disciplinar").count.length
		numApproved = materia.joins(:historia_academicas).where("materia.tipo = disciplinar").count.length   #materia.tipo ? tipo
		#numApproved = HistoriaAcademicas.where("tipo = diciplinar").group(:tipo).count.length
		return numApproved/numDisc*100
	end
	def porcentaje_fundamentacion
		numFun = materia.group_by(:tipo).having("tipo = fundamentacion").count.length
		numApproved = materia.joins(:historia_academicas).where("materia.tipo = fundamentacion").count.length
		return numApproved/numFun*100
	end
	def porcentaje_libre_eleccion
		numLib = materia.where("tipo = libre").group(:tipo).count.length
		numApproved = materia.joins(:historia_academicas).where("materia.tipo = libre").count.length
		return numApproved/numLib*100
	end
	def get_prof_grado(grado)
			prof_id = profesor_grados.where(:trabajo_grado_id = grado)
			prof_name = profesors.where(:profesor_id = prof_id).select("nombre")
			return prof_name
	end
	def get_prof_investigacion(investigacion_id)
			prof_id = profesor_investigacions.where(:grupo_investigacion_id = investigacion_id)
			prof_name = profesors.where(:profesor_id = prof_id).select("nombre")
			return prof_name
	end
end
