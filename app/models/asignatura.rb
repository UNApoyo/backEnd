class Asignatura < ApplicationRecord
  has_many :requisito_asignaturas, dependent: :destroy
  has_many :prerequisitos, through: :requisito_asignaturas
  has_many :enfoque_asignaturas, dependent: :destroy
  has_many :carrera_asignaturas, dependent: :destroy
  has_many :historia_academicas, dependent: :destroy
  has_many :enfoques, through: :enfoque_asignaturas
  has_many :carreras, through: :carrera_asignaturas
  has_many :estudiantes, through: :historia_academicas
  belongs_to :area

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
  validates :creditos, presence: true, inclusion: { in: 1..10}
  validates :codigo, presence:true, inclusion: { in: 100000..5000000}

  def self.area_estudiante(area, estudiante,page,per_page)
    self.includes(:area, :historia_academicas).where(asignaturas:{area_id:area}, historia_academicas:{estudiante_id: estudiante}).paginate(:page => page, :per_page => per_page)
  end

  def self.enfoque_estudiante(enfoque,estudiante,page,per_page)
    self.includes(:enfoque_asignaturas, :historia_academicas).where(enfoque_asignaturas:{enfoque_id:enfoque}, historia_academicas:{estudiante_id: estudiante}).paginate(:page => page, :per_page => per_page)
  end

  def self.of_area(area,page,per_page)
		self.joins(:area).where(areas: {nombre: area}).paginate(:page => page, :per_page => per_page)
	end

  def self.of_tipologia(tipo,page,per_page)
    self.where(tipologia: tipo).paginate(:page => page, :per_page => per_page)
  end

  def self.of_historia(estudiante,page,per_page)
		self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: estudiante}).paginate(:page => page, :per_page => per_page)
	end

  def self.of_historia_tipologia(estudiante, tipologia,page,per_page)
		self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: estudiante}, asignaturas:{tipologia: tipologia}).paginate(:page => page, :per_page => per_page)
	end

	def self.of_historia_area(estudiante, area,page,per_page)
		self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: estudiante}, asignaturas:{area_id: area}).paginate(:page => page, :per_page => per_page)
	end

	def self.estudiante_tipo(tipo,page,per_page)
    self.joins(:historia_academicas).where(asignaturas:{tipologia: tipo}).paginate(:page => page, :per_page => per_page)
  end

  def self.of_carrera(carrera,page,per_page)
    self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: carrera}).paginate(:page => page, :per_page => per_page)
  end

  def self.of_carrera_tipologia(carrera,tipologia,page,per_page)
    self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: carrera},asignaturas:{tipologia: tipologia}).paginate(:page => page, :per_page => per_page)
  end

  def self.of_carrera_area(carrera,area,page,per_page)
    self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: carrera},asignaturas:{area_id: area}).paginate(:page => page, :per_page => per_page)
  end

  def self.of_enfoque(enfoque,page,per_page)
    self.joins(:enfoque_asignaturas).where(enfoque_asignaturas: {enfoque_id: enfoque}).paginate(:page => page, :per_page => per_page)
  end

  def self.of_enfoque_area(area,page,per_page)
    self.joins(:enfoque_asignaturas).where(asignaturas: {area_id: area}).paginate(:page => page, :per_page => per_page).pluck("asignaturas.nombre")
  end

  def self.porcentaje_estudiante_tipologia(estudiante, tipologia,carrera)
	   num = self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: estudiante}, asignaturas:{tipologia: tipologia}).count
	   dem = self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: carrera},asignaturas:{tipologia: tipologia}).count
     if dem > 0.0
       res = num.to_f/dem.to_f * 100
    else
      res = -1
    end
  end

  def self.porcentaje_estudiante_area(estudiante, area,carrera)
	    num = self.joins(:historia_academicas).where(historia_academicas: {estudiante_id: estudiante}, asignaturas:{area_id: area}).count
	    dem = self.joins(:carrera_asignaturas).where(carrera_asignaturas: {carrera_id: carrera},asignaturas:{area_id: area}).count
      if dem > 0.0
        res = num.to_f/dem.to_f * 100
      else
        res = -1
      end
  end

  def self.sugerencia_enfoque(page, per_page, estudiante,area,carrera)
    p = self.porcentaje_estudiante_area(estudiante, area,carrera).to_f
    t =HistoriaAcademica.promedio_area(area).to_f
    if p  < 50
      if t >= 4
        return self.of_enfoque_area(area,page,per_page)
      end
    end
  end

  def self.all_porcentaje_tipologia(estudiante,carrera,sort)

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

      fundamentacion = Asignatura.porcentaje_estudiante_tipologia(estudiante,'Fundamentacion',carrera)
      libre = Asignatura.porcentaje_estudiante_tipologia(estudiante,'Libre',carrera)
      disciplinar = Asignatura.porcentaje_estudiante_tipologia(estudiante,'Disciplinar',carrera)

      if libre == -1
        libre = 0.0
        tip_cero.push('libre')
      end

      if fundamentacion == -1
        fundamentacion = 0.0
        tip_cero.push('fundamentacion')
      end

      if disciplinar == -1
        disciplinar = 0.0
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
        dict['tipologia'] = rt
        for i in 0..2
          if rt[i] == 0.0
            preversed.push(tip_cero[rcounter])
            rcounter = rcounter + 1
          else
            preversed.push(arri.key(rt[i]))
          end
        end
        dict['porcentaje'] = preversed
        dict
      elsif sort == 'porcentajes'
        rt = porcentaje.sort()
        dict['tipologia'] = rt
        for i in 0..2
          if rt[i] == 0.0
            psorted.push(tip_cero[scounter])
            scounter = scounter + 1
          else
            psorted.push(arri.key(rt[i]))
          end
        end
        dict['porcentaje'] = psorted
        dict
      else
        dict['tipologia'] = tipologia
        dict['porcentaje'] = porcentaje
        dict
      end

  end

end
