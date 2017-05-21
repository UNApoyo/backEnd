require 'fog'

class HistoriaAcademica < ApplicationRecord
  belongs_to  :asignatura
  belongs_to  :estudiante
  mount_uploader :avatar, AvatarUploader

  validates :calificacion, inclusion: { in: 0..5}


	def self.best_calificacion
		self.select("calificacion").where("calificacion > 3.0 ").paginate(:page => 1, :per_page => 20)
	end

	def self.worst_calificacion
		self.select("calificacion").where("calificacion < 3.0 ").paginate(:page => 1, :per_page => 20)
	end

  def self.calificaciones_tipologia(tipologia,page, per_page)
    self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: tipologia}).paginate(:page => page, :per_page => per_page)
  end

  def self.calificaciones_area(area,page, per_page)
    self.includes(:asignatura).select("calificacion").where(asignaturas: {area_id: area}).paginate(:page => page, :per_page => per_page)
  end
  def self.creditos_tipologia(tipologia,page, per_page)
    self.includes(:asignatura).select("creditos").where(asignaturas: {tipologia: tipologia}).paginate(:page => page, :per_page => per_page)
  end
  def self.creditos_area(area,page, per_page)
    self.joins(:asignatura).select("creditos").paginate(:page => page, :per_page => per_page).where(asignaturas: {area_id: area})
  end

  def self.promedio_tipologia(tipologia,estudiante)
    sum = self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: tipologia},historia_academicas: {estudiante_id: estudiante}).sum("calificacion")
    num = self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: tipologia},historia_academicas: {estudiante_id: estudiante}).count
    if num > 0.0
      res = sum.to_f/num.to_f
    else
     res = 0.0
   end
  end

  def self.promedio_area(area,estudiante)
    sum = self.includes(:asignatura).select("calificacion").where(asignaturas: {area_id: area},historia_academicas: {estudiante_id: estudiante}).sum("calificacion")
    num = self.includes(:asignatura).select("calificacion").where(asignaturas: {area_id: area},historia_academicas: {estudiante_id: estudiante}).count
    if num > 0.0
      res = sum.to_f/num.to_f
   else
     res = 0.0
   end
  end


  def self.all_promedio_tipologia(estudiante,sort)

      dict = {}
      arri = {}
      tip_cero = Array.new
      tipologia = Array.new
      porcentaje = Array.new
      reversed = Array.new
      sorted = Array.new
      preversed = Array.new
      psorted = Array.new
      rcounter = 0
      scounter = 0

      fundamentacion = HistoriaAcademica.promedio_tipologia('Fundamentacion',estudiante)
      print(fundamentacion)
      libre = HistoriaAcademica.promedio_tipologia('Libre',estudiante)
      print(libre)
      disciplinar = HistoriaAcademica.promedio_tipologia('Disciplinar',estudiante)
      print(disciplinar)

      if libre == 0.0
        tip_cero.push('libre')
      end

      if fundamentacion == 0.0
        tip_cero.push('fundamentacion')
      end

      if disciplinar == 0.0
        tip_cero.push('disciplinar')
      end

      arri['Fundamentacion'] = fundamentacion
      arri['Disciplinar'] = disciplinar
      arri['Libre'] = libre

      porcentaje.push(fundamentacion)
      porcentaje.push(disciplinar)
      porcentaje.push(libre)

      tipologia.push('Fundamentacion')
      tipologia.push('Disciplinar')
      tipologia.push('Libre')

      if sort == '-tipologia'
        rt = tipologia.sort().reverse
        dict['tipologia'] = rt
        for i in 0..2
          reversed.push(arri[rt[i]])
        end
        dict['porcentaje'] = reversed
        dict
      elsif sort == 'tipologia'
        rt = tipologia.sort()
        dict['tipologia'] = rt
        for i in 0..2
          sorted.push(arri[rt[i]])
        end
        dict['porcentaje'] = sorted
        dict
      elsif sort == '-porcentajes'
        rt = porcentaje.sort().reverse
        dict['porcentaje'] = rt
        for i in 0..2
          if rt[i] == 0.0
            preversed.push(tip_cero[rcounter])
            rcounter = rcounter + 1
          else
            preversed.push(arri.key(rt[i]))
          end
        end
        dict['tipologia'] = preversed
        dict
      elsif sort == 'porcentajes'
        rt = porcentaje.sort()
        dict['porcentaje'] = rt
        for i in 0..2
          if rt[i] == 0.0
            psorted.push(tip_cero[scounter])
            scounter = scounter + 1
          else
            psorted.push(arri.key(rt[i]))
          end
        end
        dict['tipologia'] = psorted
        dict
      else
        dict['tipologia'] = tipologia
        dict['porcentaje'] = porcentaje
        dict
      end

  end


  def self.all_promedio_area(estudiante,carrera,sort)
   num_areas = Asignatura.includes(:carrera_asignaturas).select(:area_id).where(carrera_asignaturas:{carrera_id:carrera}).distinct.count
   areas_carrera = Asignatura.includes(:carrera_asignaturas).where(carrera_asignaturas:{carrera_id:carrera}).select(:area_id).distinct.pluck("area_id")

   counter_re = 0
   counter_so = 0
   dict = {}
   arri = {}
   nombre = Array.new
   porcentaje = Array.new
   nombre_cero = Array.new
   sorted = Array.new
   reversed = Array.new

   for i in 1..num_areas
     p = Array.new

     if HistoriaAcademica.promedio_area(areas_carrera[i-1],estudiante) == 0.0
        p.push(0.0)
     else
        p.push(HistoriaAcademica.promedio_area(areas_carrera[i-1],estudiante))
     end

     if p.push(Area.joins(:asignaturas).where(asignaturas:{area_id:areas_carrera[i-1]}).distinct.pluck("nombre")[0]).nil?
     else
       nombre.push(p[1])
       porcentaje.push(p[0])
       dict[p[1]] = p[0]
       if p[0] == 0.0
         nombre_cero.push(p[1])
       end
     end

    end

    if sort == "-porcentajes"
      r = porcentaje.sort().reverse
      arri['porcentaje'] = r
      for i in 0..r.length-1
        if r[i] == 0.0
          reversed.push(nombre_cero[counter_re])
          counter_re = counter_re + 1
        else
          reversed.push(dict.key(r[i]))
        end
      end
      arri['nombre'] = reversed.compact
      arri

    elsif sort == "porcentajes"
      s = porcentaje.sort()
      arri['porcentaje'] = s
      for i in 0..s.length-1
        if s[i] == 0.0
          sorted.push(nombre_cero[counter_so])
          counter_so = counter_so + 1
        else
          sorted.push(dict.key(s[i]))
        end
      end
      arri['nombre'] = sorted.compact
      arri
    else
      arri['nombre'] = nombre.compact
      arri['porcentaje'] = porcentaje.compact
      arri
    end
  end







#  def self.sugerencia_trabajo_grado(page,per_page)



#ejemplo carga de una imagen y almacenamiento en nube Rackspace
=begin
  def load_historia
    img = HistoriaAcademica.new
    File.open('HistoriaAcademica.jpg') do |f|
      img.avatar = f
    end
  end

def save(img)
  compute = Fog::Compute.new(
    :provider           => 'Rackspace',
    :rackspace_api_key  => key,
    :rackspace_username => username
    )

    # boot a gentoo server (flavor 1 = 256, image 3 = gentoo 2008.0)
    server = compute.servers.create(:flavor_id => 1, :image_id => 3, :name => 'my_server')
    server.wait_for { ready? } # give server time to boot

    server.save(img) #Guardar imagen en servidor cloud

    server.destroy # cleanup
end
=end


end
