require 'fog'

class HistoriaAcademica < ApplicationRecord
  has_many  :asignaturas
  has_many  :estudiantes
  mount_uploader :avatar, AvatarUploader
  validates :calificacion, inclusion: { in: 0..5}
    def self.historia_asignatura
		self.joins(:asignaturas).select("historia_academicas.estudiante_id,historia_academicas.calificacion")
		.where(asignaturas:{codigo:"historia_academicas.asignatura_id"})
	end

	def self.include_asignatura
		self.includes(:asignaturas).where(asignaturas:{codigo:"historia_academicas.asignatura_id"}).references(:asignaturas)
	end

	def self.historia_estudiante
		self.joins(:estudiantes)
	end

	def self.find_id_sort
		self.select("asignatura_id")
	end

	def self.best_calificacion
		self.select("calificacion").where("calificacion > 4")
	end

	def self.worst_calificacion
		self.select("calificacion").where("calificacion < 3")
	end

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
