class Enfoque < ApplicationRecord
	belongs_to :carrera
	has_many :enfoque_asignaturas, dependent: :destroy
	has_many :asignaturas, through: :enfoque_asignaturas
  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.of_carrera(carrera,page,per_page)
		self.joins(:carrera).where(carreras: {nombre: carrera}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_asignatura(asignatura,page,per_page)
		self.joins(:enfoque_asignaturas).where(enfoque_asignaturas: {asignatura_id: asignatura}).paginate(:page => page, :per_page => per_page)
	end

	def self.asignaturas_enfoque(estudiante,carrera)
	 num_areas = Asignatura.includes(:carrera_asignaturas).select(:area_id).where(carrera_asignaturas:{carrera_id:carrera}).distinct.count
	 areas_carrera = Asignatura.includes(:carrera_asignaturas).where(carrera_asignaturas:{carrera_id:carrera}).select(:area_id).distinct.pluck("area_id")

	 dict = {}
	 #arreglo = Array.new
	 nombre = Array.new
	 enfoqueArea = Array.new
	 enfoque = Array.new
	 sugerencia = "Los enfoques que te recomendamos son: "
	 arreglo = Array.new
   for i in 0..num_areas-1
	   if Asignatura.porcentaje_estudiante_area(estudiante, areas_carrera[i], carrera).to_f >= 25
			 if HistoriaAcademica.promedio_area(areas_carrera[i], estudiante).to_f > 3.7
	     	enfoqueArea.push(areas_carrera[i])
			end
		 end
   end

	 for i in 0..enfoqueArea.length
		 p = Asignatura.joins(:enfoque_asignaturas).where(asignaturas: {area_id: enfoqueArea[i]}).pluck("enfoque_asignaturas.enfoque_id").compact
		 for j in 0..p.length
			 if p[j].nil?
			 else
			 enfoque.push(p[j])
			 end
	   end
	  enfoque = enfoque.compact
	 end

	 if enfoque == []
		 answer = "No tienes un porcentaje mayor al 70% en cada una de las areas de las materias de tu carrera o el promedio de estas es inferior a 3.7"
		 dict['sugerencia'] = arreglo.push(answer)
	 else
		 for i in 0..enfoque.length

			 nombre.push( Enfoque.includes(:enfoque_asignaturas).where(enfoque_asignaturas:{enfoque_id:enfoque[i]}).pluck("nombre")[0])

		 end
		 for j in 0..nombre.length-1

			 if j == nombre.length-1 || j == nombre.length - 2
				 sugerencia = sugerencia + nombre[j].to_s
			 else
				 sugerencia = sugerencia + nombre[j].to_s+", "
			 end
		 end
		dict['sugerencia'] = arreglo.push(sugerencia)
	 end
 end

end
