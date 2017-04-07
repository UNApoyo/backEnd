class CarreraSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :creditos, :codigo, :enfoque_id, :trabajo_grado_id, :estudiante_id
end
