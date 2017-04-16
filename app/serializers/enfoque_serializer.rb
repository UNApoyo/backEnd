class EnfoqueSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :carrera_id
  belongs_to :carrera
  has_many :enfoque_asignaturas
  has_many :asignaturas
