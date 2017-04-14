class Asignatura < ApplicationRecord
  has_many :requisito_asignaturas, dependent: :destroy
  has_many :prerequisitos, through: :requisito_asignaturas
  has_many :enfoque_asignaturas, dependent: :destroy
  has_many :carrera_asignaturas, dependent: :destroy
  has_many :historia_academicas, dependent: :destroy
  has_many :enfoques, through: :enfoque_asignaturas
  has_many :carreras, through: :carrera_asignaturas
  has_many :estudiantes, through: :historia_academicas
  belongs_to :area

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
  validates :creditos, presence: true, inclusion: { in: 1..10}
  validates :codigo, presence:true, inclusion: { in: 100000..5000000}

  def self.area_estudiante(area, estudiante)
    self.includes(:area, :historia_academicas).where(asignaturas:{area_id:area}, historia_academicas:{estudiante_id: estudiante}).paginate(:page => 2, :per_page => 30)
  end

  def self.enfoque_estudiante(enfoque,estudiante)
    self.includes(:enfoque_asignaturas, :historia_academicas).where(enfoque_asignaturas:{enfoque_id:enfoque}, historia_academicas:{estudiante_id: estudiante}).paginate(:page => 2, :per_page => 30)
  end

  def self.of_area(area)
		self.joins(:area).where(areas: {nombre: area}).paginate(:page => 2, :per_page => 30)
	end

  def self.of_tipologia(tipo)
    self.where(tipologia: tipo).paginate(:page => 2, :per_page => 30)
  end

  def self.of_historia(estudiante)
		self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: estudiante}).paginate(:page => 2, :per_page => 30)
	end

  def self.estudiante_tipo(tipo)
    self.joins(:historia_academicas).where(asignaturas:{tipologia: tipo}).paginate(:page => 2, :per_page => 30)
  end

  def self.of_carrera(carrera)
    self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: carrera}).paginate(:page => 2, :per_page => 30)
  end

  def self.of_enfoque(enfoque)
    self.joins(:enfoque_asignaturas).where(enfoque_asignaturas: {enfoque_id: enfoque}).paginate(:page => 2, :per_page => 30)
  end

end
