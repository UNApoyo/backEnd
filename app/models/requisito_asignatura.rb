class RequisitoAsignatura < ApplicationRecord
  belongs_to :prerequisito
  belongs_to :asignatura

  def self.of_asignatura(asignatura,page,per_page)
    self.where(requisito_asignaturas:{asignatura_id: asignatura}).paginate(:page => page, :per_page => per_page)
  end
end
