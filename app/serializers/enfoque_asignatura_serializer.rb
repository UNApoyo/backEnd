class EnfoqueAsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :enfoque_id, :asignatura_id
end
