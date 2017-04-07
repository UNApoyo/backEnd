class Asignatura < ApplicationRecord
  has_many :prerequisitos
  has_many :enfoque_asignaturas, dependent: :destroy
  has_many :carrera_asignaturas, dependent: :destroy
  has_many :historia_academicas, dependent: :destroy
  has_many :enfoques, through: :enfoque_asignaturas
  has_many :carreras, through: :carrera_asignaturas
  has_many :estudiantes, through: :historia_academicas

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
  validates :creditos, presence: true, inclusion: { in: 1..10}

end
