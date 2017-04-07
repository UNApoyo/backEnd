class CarreraSerializer < ActiveModel::Serializer
  attributes :nombre, :creditos, :codigo, :enfoque_id, :trabajo_grado_id, :estudiante_id
end
