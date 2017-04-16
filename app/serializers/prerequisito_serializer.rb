class PrerequisitoSerializer < ActiveModel::Serializer
  type :data
  attributes :requisito
  has_many :asignaturas
end
