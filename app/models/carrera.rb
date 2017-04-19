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

  def self.of_estudiante(estudiante,page,per_page)
		self.joins(:estudiantes).where(estudiantes: {id: estudiante}).paginate(:page => page, :per_page => per_page)
	end

  def self.of_asignatura(asignatura,page,per_page)
		self.joins(:carrera_asignaturas).where(carrera_asignaturas: {asignatura_id: asignatura}).paginate(:page => page, :per_page => per_page)
	end

  def self.of_investigacion(grupo,page,per_page)
		self.joins(:carrera_investigacions).where(carrera_investigacions: {grupo_investigacion_id: grupo}).paginate(:page => page, :per_page => per_page)
	end

  def self.get_carreras(page,per_page)
    self.select("nombre").paginate(:page => page, :per_page => per_page)
  end

  def self.det_carrera(carrera,page,per_page)
    self.where(nombre: carrera).take.paginate(:page => page, :per_page => per_page)
  end

  def self.sugerencia_trabajo_grado(page,per_page,estudiante)
     p = Estudiante.porcentaje_ca(estudiante)
     if p[0] >= 60
       self.joins(:trabajo_grados).paginate(:page => page, :per_page => per_page)
     end
  end

end
