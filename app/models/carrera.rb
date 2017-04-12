class Carrera < ApplicationRecord
  has_many :enfoques
  has_many :trabajo_grados
  has_many :estudiantes
  has_many :carrera_asignaturas, dependent: :destroy
  has_many :carrera_investigacions, dependent: :destroy
  has_many :asignaturas, through: :carrera_asignaturas
  has_many :grupo_investigacions, through: :carrera_investigacions

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create} #/^[a-z ,.'-]+$/i
  validates :creditos, inclusion: { in: 150..215}
  validates :codigo, inclusion: { in: 1000..3000}

  def self.of_estudiante
		self.joins(:estudiantes).where(estudiantes: {id: 1})
	end

  def self.of_asignatura
		self.joins(:carrera_asignaturas).where(carrera_asignaturas: {asignatura_id: 1})
	end

  def self.of_investigacion
		self.joins(:carrera_investigacions).where(carrera_investigacions: {grupo_investigacion_id: 1})
	end

  def self.get_carreras
    self.select("nombre")
  end

  def self.det_carrera
    self.where(nombre: 'Ingenieria de Sistemas y Computacion').take
  end

end
