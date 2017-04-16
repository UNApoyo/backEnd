class RequisitoAsignaturaSerializer < ActiveModel::Serializer
  attributes :prerequisito_id, :asignatura_id
  has_one :prerequisito
  has_one :asignatura
end
