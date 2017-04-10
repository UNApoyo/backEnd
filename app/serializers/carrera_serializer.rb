class CarreraSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :creditos, :codigo
end
