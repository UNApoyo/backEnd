class HistoriaAcademica < ApplicationRecord
  has_many :materia
  has_one :estudiante
end
