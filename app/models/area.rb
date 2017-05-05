class Area < ApplicationRecord
	has_many :asignaturas
	has_many :area_investigacions, dependent: :destroy
	has_many :grupo_investigacions, through: :area_investigacions

	validates :nombre, presence: true#, uniqueness: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}

	def self.get_areas(page,per_page)
	  self.select("nombre").paginate(:page => page, :per_page => per_page)
	end

	def self.of_asignatura(asignatura,page,per_page)
		self.joins(:asignaturas).where(asignaturas: {nombre: asignatura}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_investigacion(id,page,per_page)
		self.joins(:area_investigacions).where(area_investigacions: {grupo_investigacion_id: id}).paginate(:page => page, :per_page => per_page)
	end

	def self.all_porcentaje_area(estudiante,carrera)
    num_areas = CarreraAsignatura.where(carrera_id:carrera)
		puts(num_areas)
		q = Array.new(num_areas)
    for i in 1..num_areas+1
			p = Array.new
			if Asignatura.porcentaje_estudiante_area(estudiante, i ,carrera) == -1
				p.push(0.0)
			else
      	p.push( Asignatura.porcentaje_estudiante_area(estudiante, i ,carrera))
			end
			if p.push(self.joins(:asignaturas).where(asignaturas:{area_id:i}).distinct.pluck("nombre"))[0].nil?
			else
				q.push(p)
			end
    end
		if q[0].nil?
			q.delete(q[0])
		end
		q
  end

end
