class HistoriaAcademicaSerializer < ActiveModel::Serializer
  type :data
  attributes :calificacion, :asignatura_id, :estudiante_id
  belongs_to  :asignatura
  belongs_to  :estudiante  
end
