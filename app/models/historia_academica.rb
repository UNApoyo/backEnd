class HistoriaAcademica < ApplicationRecord
  has_many :materia
  has_one :estudiante
  def get_promedio_disc
      calificaciones = historia_academica.joins(:materia).where("materia.tipo = disciplinar").average("historia_academicas.calificacion")
      return calificaciones
  end

  def get_promedio_fun
      calificaciones = historia_academica.joins(:materia).where("materia.tipo = fundamentacion").average("historia_academicas.calificacion")
      return calificaciones
  end


  def get_promedio_lib
      calificaciones = historia_academica.joins(:materia).where("materia.tipo = libre").average("historia_academicas.calificacion")
      return calificaciones
  end


end
