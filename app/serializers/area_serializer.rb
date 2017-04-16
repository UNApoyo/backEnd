class AreaSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre
  has_many :asignaturas
	has_many :area_investigacions
	has_many :grupo_investigacions
end
