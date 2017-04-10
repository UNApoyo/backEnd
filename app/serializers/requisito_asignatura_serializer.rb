class RequisitoAsignaturaSerializer < ActiveModel::Serializer
  attributes :id
  has_one :prerequisito
  has_one :asignatura
end
