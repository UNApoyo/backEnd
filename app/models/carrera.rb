class Carrera < ApplicationRecord
  belongs_to :enfoque
  belongs_to :trabajo_grado
  belongs_to :estudiante

  validates :nombre, presence: true, format:{with: /\A[a-zA-Z]+\z/, on : :create}
  validates :creditos, presence: true, length: {minimun: 120}
  validates :codigo, presence: true, length: {minimun: 1000}
en
