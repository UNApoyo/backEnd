class CarreraInvestigacionSerializer < ActiveModel::Serializer
  type :data
  attributes :carrera_id, :grupo_investigacion_id
  belongs_to :carrera
  belongs_to :grupo_investigacion
end
