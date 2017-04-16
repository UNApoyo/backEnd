class EstudianteSerializer < ActiveModel::Serializer
  type :data
  attributes :porcentaje_carrera, :creditos_disponibles, :creditos_aprobados, :creditos_inscritos, :creditos_pendientes, :carrera_id
  belongs_to :carrera
  has_many :historia_academicas
  has_many :asignaturas
end
