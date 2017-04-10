class Carrera < ApplicationRecord
  has_many :enfoques
  has_many :trabajo_grados
  has_many :estudiantes
  has_many :carrera_asignaturas, dependent: :destroy
  has_many :carrera_investigacions, dependent: :destroy
  has_many :asignaturas, through: :carrera_asignaturas
  has_many :grupo_investigacions, through: :carrera_investigacions

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create} #/^[a-z ,.'-]+$/i
#  validates :creditos, inclusion: { in: 1..115}
#  validates :codigo, inclusion: { in: 1..10}


def self.get_all_carreras #ejemplo query sencillo
  self.select("nombre")
end

def self.get_carreras_programacion #no sirve, no puede hacer join con Asignatura
  self.joins(:Asignatura).where(:nombre => "Programacion de Computadores")
end
end
