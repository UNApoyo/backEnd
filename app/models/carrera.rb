class Carrera < ApplicationRecord
  belongs_to :enfoque
  belongs_to :trabajo_grado
  belongs_to :estudiante
  has_many :Asignatura

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create} #/^[a-z ,.'-]+$/i
  validates :creditos, presence: true, length: {minimum: 1}
  validates :codigo, presence: true, length: {minimum: 1}


def self.get_all_carreras #ejemplo query sencillo
  self.select("nombre")
end

def self.get_carreras_programacion #no sirve, no puede hacer join con Asignatura
  self.joins(:Asignatura).where(:nombre => "Programacion de Computadores")
end
end
