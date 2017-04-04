class ProfesorInvestigacion < ApplicationRecord
  has_many :profesor
  has_many :grupo_investigacion

  def get_prof_investigacion(investigacion_id)
      prof_id = profesor_investigacion.where(:grupo_investigacion_id = investigacion_id)
      prof_name = profesor.where(:profesor_id = prof_id).select("nombre")
      return prof_name
  end

end
