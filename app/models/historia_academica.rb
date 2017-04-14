require 'fog'


class HistoriaAcademica < ApplicationRecord
  belongs_to  :asignatura
  belongs_to  :estudiante
  mount_uploader :avatar, AvatarUploader

  validates :calificacion, inclusion: { in: 0..5}

	def self.best_calificacion
		self.select("calificacion").where("calificacion > 4").paginate(:page => 2, :per_page => 30)
	end

	def self.worst_calificacion
		self.select("calificacion").where("calificacion < 3").paginate(:page => 2, :per_page => 30)
	end

  def self.calificaciones_fundamentacion
    self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: "Fundamentacion"}).paginate(:page => 2, :per_page => 30)
  end

  def self.calificaciones_disciplinar
    self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: "Disciplinar"}).paginate(:page => 2, :per_page => 30)
  end

  def self.calificaciones_libre
    self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: "Libre"}).paginate(:page => 2, :per_page => 30)
  end

  def self.calificaciones_area(area)
    self.includes(:asignatura).select("calificacion").where(asignaturas: {area_id: area}).paginate(:page => 2, :per_page => 30)
  end
  def self.creditos_tipologia(tipologia)
    self.includes(:asignatura).select("creditos").where(asignaturas: {tipologia: tipologia}).paginate(:page => 2, :per_page => 30)
  end
  def self.creditos_area(area)
    self.includes(:asignatura).select("creditos").where(asignaturas: {area_id: area}).paginate(:page => 2, :per_page => 30)
  end

  def self.promedio_fundamentacion
    sum = calificaciones_fundamentacion.sum("calificacion")
    num = calificaciones_fundamentacion.count
    prom = sum/num
  end

  def self.promedio_disciplinar
    sum = calificaciones_disciplinar.sum("calificacion")
    num = calificaciones_disciplinar.count
    prom = sum/num
  end

  def self.promedio_libre
    sum = calificaciones_libre.sum("calificacion")
    num = calificaciones_libre.count
    prom = sum/num
  end

  def self.promedio_area(area)
    sum = calificaciones_area(area).sum("calificacion")
    num = calificaciones_area(area).count
    prom = sum/num
  end

  #def self.porcentaje_tipologia(tipologia)
  #  self.includes(:asignatura)


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
