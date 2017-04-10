class RequisitoAsignatura < ApplicationRecord
  belongs_to :prerequisito
  belongs_to :asignatura
end
