class Carrera < ApplicationRecord
  has_many :enfoque
  has_many :trabajo_grado
  has_many :estudiante
  has_many :carrera_asignatura, dependent: :destroy
  has_many :carrera_investigacion, dependent: :destroy
  has_many :asignatura, through: :carrera_asignatura
  has_many :grupo_investigacion, through: :carrera_investigacion

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create} #/^[a-z ,.'-]+$/i
  validates :creditos, presence: true, inclusion: { in: 120..250}
  validates :codigo, presence: true, inclusion: { in: 1000..3000}


def self.get_all_carreras #ejemplo query sencillo
  self.select("nombre")
end

def self.get_carreras_programacion #no sirve, no puede hacer join con Asignatura
  self.joins(:Asignatura).where(:nombre => "Programacion de Computadores")
end
end
