class TrabajoGradoSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :carrera_id
	has_many :profesors
	belongs_to :carrera
end
