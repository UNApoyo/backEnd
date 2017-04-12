class RequisitoAsignatura < ApplicationRecord
  belongs_to :prerequisito
  belongs_to :asignatura

  def self.of_asignatura
    self.where(requisito_asignaturas:{asignatura_id: 1})
  end
end
