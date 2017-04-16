class AsignaturaSerializer < ActiveModel::Serializer
  type :data
  attributes :nombre, :creditos, :tipologia, :codigo, :area_id
  has_many :requisito_asignaturas
  has_many :prerequisitos
  has_many :enfoque_asignaturas
  has_many :carrera_asignaturas
  has_many :historia_academicas
  has_many :enfoques
  has_many :carreras
  has_many :estudiantes
  belongs_to :area
end
