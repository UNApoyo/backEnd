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


end
