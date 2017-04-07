class CarreraAsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :carrera_id, :asignatura_id
end
