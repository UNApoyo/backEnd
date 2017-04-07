class ProfesorSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :info
end
