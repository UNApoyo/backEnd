class EnfoqueAsignatura < ApplicationRecord
  has_many :enfoques
  has_many :asignaturas
end
