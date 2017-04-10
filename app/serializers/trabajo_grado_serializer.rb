class TrabajoGradoSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :carrera_id
end
