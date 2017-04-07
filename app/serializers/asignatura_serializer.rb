class AsignaturaSerializer < ActiveModel::Serializer
  attributes :nombre, :creditos, :tipologia, :codigo, :prerequisito_id
end
