class AsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :creditos, :tipologia, :codigo
end
