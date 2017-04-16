class CarreraAsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :carrera_id, :asignatura_id
  belongs_to :carrera
  belongs_to :asignatura
end
