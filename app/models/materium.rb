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
		numDisc = Materium.where("tipo = diciplinar").group(:tipo).count.length
		numApproved = MateriasTomadas.where("tipo = diciplinar").group(:tipo).count.length
		return numApproved/numDisc*100
	end
	def porcentaje_fundamentacion
		numFun = Materium.where("tipo = fundamentacion").group(:tipo).count.length
		numApproved = MateriasTomadas.where("tipo = fundamentacion").group(:tipo).count.length
		return numApproved/numFun*100
	end
	def porcentaje_libre_eleccion
		numLib = Materium.where("tipo = libre").group(:tipo).count.length
		numApproved = MateriasTomadas.where("tipo = libre").group(:tipo).count.length
		return numApproved/numLib*100
	end


end
