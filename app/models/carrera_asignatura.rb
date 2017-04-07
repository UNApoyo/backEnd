class CarreraAsignatura < ApplicationRecord
  has_many :carreras
  has_many :asignaturas
end
