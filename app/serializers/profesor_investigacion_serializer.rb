class ProfesorInvestigacionSerializer < ActiveModel::Serializer
  type :data
  attributes :profesor_id, :grupo_investigacion_id
  belongs_to :profesor
  belongs_to :grupo_investigacion
end
