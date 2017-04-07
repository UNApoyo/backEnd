class ProfesorGradoSerializer < ActiveModel::Serializer
  type :data
  attributes :profesor_id, :trabajo_grado_id
end
