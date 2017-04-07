class EstudianteSerializer < ActiveModel::Serializer
  type :data
  attributes :porcentaje_carrera, :creditos_disponibles, :creditos_aprobados, :creditos_inscritos, :creditos_pendientes
end
