class Prerequisito < ApplicationRecord
  has_many :asignaturas, through: :requisito_asignaturas
end
