class Area < ApplicationRecord
	has_many :asignaturas
	has_many :area_investigacions, dependent: :destroy
	has_many :grupo_investigacions, through: :area_investigacions

	validates :nombre, presence: true#, uniqueness: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.get_areas(column)
		if column == "-nombre"
	  	self.order(nombre: :desc).paginate(:page => 1, :per_page => 20)
		elseif column == "nombre"
			self.order(nombre: :asc).paginate(:page => 1, :per_page => 20)
		else
			puts "wrong select"
		end
	end

	def self.of_asignatura(asignatura,page,per_page)
		self.joins(:asignaturas).where(asignaturas: {nombre: asignatura}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_investigacion(id,page,per_page)
		self.joins(:area_investigacions).where(area_investigacions: {grupo_investigacion_id: id}).paginate(:page => page, :per_page => per_page)
	end

	def self.all_porcentaje_area(estudiante,carrera,sort)
	 num_areas = Asignatura.includes(:carrera_asignaturas).select(:area_id).where(carrera_asignaturas:{carrera_id:carrera}).distinct.count
	 areas_carrera = Asignatura.includes(:carrera_asignaturas).where(carrera_asignaturas:{carrera_id:carrera}).select(:area_id).distinct.pluck("area_id")
	 puts(areas_carrera)
	 arri = Array.new(num_areas)
	 other = Array.new(num_areas)
   for i in 1..num_areas
            p = Array.new
						print(areas_carrera[i-1])
            if Asignatura.porcentaje_estudiante_area(estudiante, areas_carrera[i-1] ,carrera) == -1
                p.push(0.0)
            else
         				p.push( Asignatura.porcentaje_estudiante_area(estudiante, areas_carrera[i-1] ,carrera))
            end
            if p.push(self.joins(:asignaturas).where(asignaturas:{area_id:areas_carrera[i-1]}).distinct.pluck("nombre"))[0].nil?
            else
              arri.push(p)
            end
  	end
		if arri[0].nil?
			arri.delete(arri[0])
		end

		if srt == "-porcentajes"
			arri.sort().reverse
		elsif srt == "porcentajes"
			arri.sort()
		else
			arri
		end



 end

end
