class ProfesorGrado < ApplicationRecord
  has_many :profesor
  has_many :trabajo_grado

  def get_prof_grado(grado)
      prof_id = profesor_grado.where(:trabajo_grado_id = grado)
      prof_name = profesor.where(:profesor_id = prof_id).select("nombre")
      return prof_name
  end

end
