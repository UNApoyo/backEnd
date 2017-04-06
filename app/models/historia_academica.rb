class HistoriaAcademica < ApplicationRecord
  belongs_to :asignatura
  belongs_to :estudiante
end
