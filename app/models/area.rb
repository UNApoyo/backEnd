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

     if Asignatura.porcentaje_estudiante_area(estudiante, areas_carrera[i-1] ,carrera) == -1
      	p.push(0.0)
     else
        p.push( Asignatura.porcentaje_estudiante_area(estudiante, areas_carrera[i-1] ,carrera))
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

end
