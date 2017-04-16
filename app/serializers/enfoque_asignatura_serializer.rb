class EnfoqueAsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :enfoque_id, :asignatura_id
  belongs_to :enfoque
  belongs_to :asignatura
end
