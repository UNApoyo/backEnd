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

  def self.area_estudiante
    self.includes(:area, :historia_academicas).where(asignaturas:{area_id:1}, historia_academicas:{estudiante_id: 1})
  end

  def self.enfoque_estudiante
    self.includes(:enfoque_asignaturas, :historia_academicas).where(enfoque_asignaturas:{enfoque_id:1}, historia_academicas:{estudiante_id: 1})
  end

  def self.of_area
		self.joins(:area).where(areas: {nombre: 'Matematicas'})
	end

  def self.of_tipologia
    self.where(tipologia: 'Fundamentacion')
  end

  def self.of_historia
		self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: 1})
	end

  def self.estudiante_tipo
    self.joins(:historia_academicas).where(asignaturas:{tipologia:'Fundamentacion'})
  end

  def self.of_carrera
    self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: 1})
  end

  def self.of_enfoque
    self.joins(:enfoque_asignaturas).where(enfoque_asignaturas: {enfoque_id: 1})
  end

end
