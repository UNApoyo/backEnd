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

  def self.of_estudiante(estudiante)
		self.joins(:estudiantes).where(estudiantes: {id: estudiante}).paginate(:page => 2, :per_page => 30)
	end

  def self.of_asignatura(asignatura)
		self.joins(:carrera_asignaturas).where(carrera_asignaturas: {asignatura_id: asignatura}).paginate(:page => 2, :per_page => 30)
	end

  def self.of_investigacion(grupo)
		self.joins(:carrera_investigacions).where(carrera_investigacions: {grupo_investigacion_id: grupo}).paginate(:page => 2, :per_page => 30)
	end

  def self.get_carreras
    self.select("nombre").paginate(:page => 2, :per_page => 30)
  end

  def self.det_carrera(carrera)
    self.where(nombre: carrera).take.paginate(:page => 2, :per_page => 30)
  end

end
