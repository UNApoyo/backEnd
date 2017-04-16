require 'fog'

class HistoriaAcademica < ApplicationRecord
  belongs_to  :asignatura
  belongs_to  :estudiante
  mount_uploader :avatar, AvatarUploader

  validates :calificacion, inclusion: { in: 0..5}


	def self.best_calificacion(page, per_page)
		self.paginate.select("calificacion").where("calificacion > 3.0 ").(:page => page, :per_page => per_page)
	end

	def self.worst_calificacion(page, per_page)
		self.select("calificacion").where("calificacion < 3.0 ").paginate(:page => page, :per_page => per_page)
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

  def self.promedio_tipologia(tipologia)
    sum = self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: tipologia}).sum("calificacion")
    num = self.includes(:asignatura).select("calificacion").where(asignaturas: {tipologia: tipologia}).count
    prom = sum/num
  end

  def self.promedio_area(area)
    sum = self.includes(:asignatura).select("calificacion").where(asignaturas: {area_id: area}).sum("calificacion")
    num = self.includes(:asignatura).select("calificacion").where(asignaturas: {area_id: area}).count
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
