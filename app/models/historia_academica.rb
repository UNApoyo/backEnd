class HistoriaAcademica < ApplicationRecord
  belongs_to :asignatura
  belongs_to :estudiante

  validates :calificacion, presence: true, inclusion: { in: 0..5}
end
