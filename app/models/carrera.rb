class Carrera < ApplicationRecord
  belongs_to :enfoque
  belongs_to :trabajo_grado
  belongs_to :estudiante

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create} #/^[a-z ,.'-]+$/i
  validates :creditos, presence: true, length: {minimum: 1}
  validates :codigo, presence: true, length: {minimum: 1}
end
