class ProfesorGradoSerializer < ActiveModel::Serializer
  type :data
  attributes :profesor_id, :trabajo_grado_id
  belongs_to :profesor
  belongs_to :trabajo_grado
end
