class AreaInvestigacionSerializer < ActiveModel::Serializer
  type :data
  attributes :area_id, :grupo_investigacion_id
  belongs_to :area
  belongs_to :grupo_investigacion
end
