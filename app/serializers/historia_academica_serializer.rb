class HistoriaAcademicaSerializer < ActiveModel::Serializer
  type :data
  attributes :calificacion, :asignatura_id, :estudiante_id
end
