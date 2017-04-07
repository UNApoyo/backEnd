class EstudianteSerializer < ActiveModel::Serializer
  attributes :porcentaje_carrera, :creditos_disponibles, :creditos_aprobados, :creditos_inscritos, :creditos_pendientes
end
