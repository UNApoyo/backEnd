class CarreraInvestigacionSerializer < ActiveModel::Serializer
  type :data
  attributes :carrera_id, :grupo_investigacion_id
end
