class ProfesorSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :info
  has_many :profesor_grados
	has_many :profesor_investigacions
	has_many :trabajo_grados
	has_many :grupo_investigacions
end
