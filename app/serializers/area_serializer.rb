class AreaSerializer < ActiveModel::Serializer
  type :data
  attributes :nombres
  has_many :asignaturas
	has_many :area_investigacions
	has_many :grupo_investigacions
end
