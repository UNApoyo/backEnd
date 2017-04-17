class Prerequisito < ApplicationRecord
  has_many :requisito_asignaturas, dependent: :destroy
  has_many :asignaturas, through: :requisito_asignaturas
end
