class Estudiante < ApplicationRecord
  belongs_to :carrera
	has_many :historia_academicas, dependent: :destroy
	has_many :asignaturas, through: :historia_academicas

  validates :porcentaje_carrera, presence: true, inclusion: {in: 0..100}
  validates :creditos_disponibles, presence: true
  validates :creditos_aprobados, presence: true
  validates :creditos_inscritos, presence: true
  validates :creditos_pendientes, presence: true

  def self.porcentaje_ca(estudiante)
    self.joins(:historia_academicas).select("estudiantes.porcentaje_carrera").where(historia_academicas:{estudiante_id: estudiante}).uniq.pluck("porcentaje_carrera")
  end

  def self.procesar_historia(texto)

    reng = texto.split("\n")
    n = reng.length - 28
    #materias
    materias = []
    for i in 22..n
      linea = reng[i]
      expmat = /[0-9]+[-][0-9]+[A-Z]*/
      if expmat.match(linea)
        nota = linea.split("\t").last
        linea = linea.split("-").first.from(1)
        materias.push([linea,nota])
      end
    end
    #nombre
    expnom = /^((?!terminar).)*/
    nombre = expnom.match(reng[3])[0]
    #ccarrera
    expcar = /[0-9]{4}/
    ccarrera = expcar.match(texto)[0]
    estudiant = reng.from(-27)
    a=0
    #porcentaje
    expes = /[0-9]+/
    if reng[4][0]=='t'  #firefox
      porcentaje = expes.match(estudiant[1])[0]
      a=2
    else
        porcentaje = expes.match(estudiant[0])[0]
    end
    #disponibles
    disponibles = estudiant[18+a].split("\t").last
    #aprobados
    aprobados = estudiant[10+a].split("\t").last
    #pendientes
    pendientes = estudiant[11+a].split("\t").last
    #inscritos
    inscritos = estudiant[12+a].split("\t").last
    idc = Carrera.select("id").where(carreras: {codigo: ccarrera}).sum("id")
    Estudiante.create(porcentaje_carrera:porcentaje,
                      creditos_disponibles:disponibles,
                      creditos_aprobados:aprobados,
                      creditos_inscritos:inscritos,
                      creditos_pendientes:pendientes,
                      carrera_id:idc)
    ide = Estudiante.last.id
    m = materias.length
    for i in 0..m
      ida = Asignatura.select("id").where(asignaturas: {codigo: materias[0][0]}).sum("id")
      if ida > 0
        HistoriaAcademica.create(calificacion:materias[0][1],
                            asignatura_id:ida,
                            estudiante_id:ide)
      end
    end
    ide
  end
end
