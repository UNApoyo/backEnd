class AsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :creditos, :tipologia, :codigo, :prerequisito_id
end
