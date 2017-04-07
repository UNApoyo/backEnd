class AreaSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :materia_id
end
