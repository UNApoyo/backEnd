class Asignatura < ApplicationRecord
  has_many :prerequisito
  has_many :enfoque_asignatura, dependent: :destroy
  has_many :carrera_asignatura, dependent: :destroy
  has_many :historia_academica, dependent: :destroy
  has_many :enfoque, through: :enfoque_asignatura
  has_many :carrera, through: :carrera_asignatura
  has_many :estudiante, through: :historia_academica

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
  validates :creditos, presence: true, inclusion: { in: 1..10}

end
