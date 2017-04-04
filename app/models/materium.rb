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
end
