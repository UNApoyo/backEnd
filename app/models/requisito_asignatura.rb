class RequisitoAsignatura < ApplicationRecord
  belongs_to :prerequisito
  belongs_to :asignatura

  def self.of_asignatura(asignatura)
    self.where(requisito_asignaturas:{asignatura_id: asignatura}).paginate(:page => 2, :per_page => 30)
  end
end
