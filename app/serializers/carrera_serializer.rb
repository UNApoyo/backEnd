class CarreraSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :creditos, :codigo, :enfoque_id, :trabajo_grado_id, :estudiante_id
  as_many :enfoques
  has_many :trabajo_grados
  has_many :estudiantes
  has_many :carrera_asignaturas
  has_many :carrera_investigacions
  has_many :asignaturas
  has_many :grupo_investigacions
end
