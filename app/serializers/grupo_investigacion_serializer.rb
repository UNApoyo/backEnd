class GrupoInvestigacionSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre
  has_many :area_investigacions
	has_many :carrera_investigacions
	has_many :profesor_investigacions
	has_many :areas
	has_many :carreras
	has_many :profesors
end
