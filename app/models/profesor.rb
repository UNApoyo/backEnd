class Profesor < ApplicationRecord
	has_many :profesor_grados, dependent: :destroy
	has_many :profesor_investigacions, dependent: :destroy
	has_many :trabajo_grados, through: :profesor_grados
	has_many :grupo_investigacions, through: :profesor_investigacions

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.of_grado(grado,page,per_page)
		self.joins(:profesor_grados).where(profesor_grados: {trabajo_grado_id: grado}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_investigacion(investigacion,page,per_page)
		self.joins(:profesor_investigacions).where(profesor_investigacions: {investigacion_id: investigacion}).paginate(:page => page, :per_page => per_page)
	end
end
