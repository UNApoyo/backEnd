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

  def self.ph()
    texto= "
seleccione el rol de usuario
ESTUDIANTE
Diana Carolina Navarrete Ramirez
terminar sesión
navegación estudiante
inicio
APOYO ACADÉMICO
ARCHIVO
CERTIFICADOS
MI HISTORIA ACADEMICA
MIS DATOS PERSONALES
CATÁLOGO PROG. CURRICULARES
DOCUMENTACIÓN
INFORMACIÓN FINANCIERA
LIBRE ACCESO
ZONA DE BUSQUEDAS

inicio > ARCHIVO > MI HISTORIA ACADEMICA
mi historia académica/
versión impresión
+ preguntas frecuentes
+ descarga de archivos

	2879 | ingeniería de sistemas y computación
estudiantes que deben nivelar una asignatura [2]
	2543 | ingeniería de sistemas
  01	periodo académico | 2012-II
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000001-33C	Matemáticas Básicas	4	8	12	P	4	1		3.2
aprobado
	1000044-33C	Inglés I- Semestral	4	4	8	P	3	1		AP
aprobado
	2015734-33C	Programación de computadores	6	0	6	C	3	1		3.9
aprobado
	2016749-33C	Introducción a la Ingeniería de Sistemas	4	0	4	C	3	1		5.0
aprobado
	3-0	RECONOCIMIENTO IDIOMA NIVEL I - II	0	0	0	P	6	1	F	AP
  02	periodo académico | 2013-I
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
no aprobado
	1000004-33C	Cálculo diferencial	4	0	4	B	4	1		2.0
aprobado
	1000046-33C	Inglés III - Semestral	4	4	8	P	3	1		AP
aprobado
	2016350-33C	Matemáticas Discretas	4	0	4	B	4	1		3.1
no aprobado
	2016375-33C	Programación orientada a objetos	4	0	4	C	3	1		1.5
aprobado
	2018156-33C	Coro universitario I	5	0	5	L	2	1		4.1
aprobado
	2025336-33C	Electiva en lengua Coreana I	4	0	4	L	3	1		3.0
  03	periodo académico | 2013-II
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000004-27	Cálculo diferencial	4	0	4	B	4	2		3.7
no aprobado
	2015172-3	Geometría elemental	4	0	4	L	4	1		2.1
aprobado
	2018157-1	Coro universitario II	5	0	5	L	2	1		4.7
  04	periodo académico | 2014-I
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000003-21	Álgebra Lineal	4	0	4	B	4	1		3.2
no aprobado
	1000005-5	Cálculo Integral	4	0	4	B	4	1		2.3
aprobado
	2016375-1	Programación orientada a objetos	4	0	4	C	3	2		4.2
aprobado
	2016698-4	Elementos de computadores	4	0	4	C	3	1		4.3
aprobado
	2018159-1	Coro universitario IV	5	0	5	L	2	1		5.0
  05	periodo académico | 2014-II
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	2016353-2	Bases de datos	4	0	4	C	3	1		3.3
aprobado
	2016697-3	Arquitectura de computadores	4	0	4	C	3	1		4.0
aprobado
	2016699-1	Estructuras de Datos	4	0	4	C	3	1		3.5
aprobado
	2018158-1	Coro universitario III	5	0	5	L	2	1		4.9
  06	periodo académico | 2015-I
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000005-3	Cálculo Integral	4	0	4	B	4	3		4.3
aprobado
	2015174-2	Introducción a la teoría de la computación	4	0	4	B	4	1		3.9
aprobado
	2016707-1	Sistemas operativos	4	0	4	C	3	1		3.1
aprobado
	2016788-1	Tecnología Digital	4	0	4	L	3	1		4.6
  07	periodo académico | 2015-II
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000006-19	Cálculo en varias variables	4	0	4	B	4	1		3.2
aprobado
	1000019-6	Fundamentos de mecánica	6	0	6	B	4	1		3.7
aprobado
	1000013-4	Probabilidad y estadística fundamental	4	0	4	B	3	1		4.2
aprobado
	2025964-2	Matemáticas discretas II	4	0	4	B	4	1		4.0
  08	periodo académico | 2016-I
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000017-6	Fundamentos de electricidad y magnetismo	6	0	6	B	4	1		3.1
aprobado
	2015703-5	Ingeniería económica	4	0	4	B	3	1		3.8
aprobado
	2015970-9	Métodos numéricos	4	0	4	B	3	1		3.0
aprobado
	2016701-1	Ingeniería de software I	4	0	4	C	3	1		3.7
aprobado
	2025970-1	Modelos y simulación	4	0	4	C	3	1		3.7
  09	periodo académico | 2016-II
	código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
	1000047-16	Inglés IV- Semestral	4	4	8	P	3	1		AP
aprobado
	2015702-1	Gerencia y gestión de proyectos	4	0	4	B	3	1		3.8
aprobado
	1000011-3	Fundamentos de ecología	4	0	4	L	3	1		3.5
aprobado
	2016696-2	Algoritmos	4	0	4	B	3	1		4.1
aprobado
	2025967-3	Redes de computadores	4	0	4	C	3	1		4.5
aprobado
	2027290-1	Cátedra José Celestino Mutis: Cátedra del mar	3	0	3	L	3	1		4.7

Promedio Académico	[3.8]
Promedio Aritmético Ponderado Acumulado - PAPA	[3.6]

63.0%

% de avance en los creditos exigidos del plan de estudios




créditos	plan de estudios	nivel	total estudiante
fundam.	discipl.	Libre e.	Total
exigidos	51	81	33	165	16	181
aprobados	51	33	20	104	19	123
aprobados plan	51	33	20	104	--	104
pendientes	0	48	13	61	0	61
inscritos	59	42	29	130	13	143
	Créditos excedentes	Fundamentación	0	Disciplinar-Profesional	0	Total créditos excedentes	0
	Total de créditos cancelados en los periodos cursados	11
resumen de créditos
Cupo adicional de créditos	80
Cupo créditos	112
cupo de créditos menos créditos pendientes	51

versión impresión
inicio | comentarios y sugerencias | preguntas frecuentes | descarga de archivos | mapa del sitio | noticias | términos de uso
Sistema de Información Académica [Nivel Nacional]
Ciudad Universitaria, Cra 30 # 45-03 - Edificio 103 Polideportivo 2 Piso, Bogotá - Colombia | www.registro.unal.edu.co | divregistro_bog@unal.edu.co
Actualizado: 1 de Marzo de 2017 | Todos los derechos reservados ©Universidad Nacional de Colombia 2017
"
  textoo="
SELECCIONE EL ROL DE USUARIO
estudiante
Diana Carolina Navarrete Ramirez terminar sesión
navegación estudiante
inicio
apoyo académico
archivo
certificados
mi historia academica
mis datos personales
catálogo prog. curriculares
documentación
información financiera
libre acceso
zona de busquedas

inicio > archivo > mi historia academica
MI HISTORIA ACADÉMICA/
versión impresión+ preguntas frecuentes+ descarga de archivos

2879 | ingeniería de sistemas y computación
estudiantes que deben nivelar una asignatura [2]



	2543 | ingeniería de sistemas

  01	periodo académico | 2012-II
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000001-33C	MATEMÁTICAS BÁSICAS	4	8	12	P	4	1		3.2
aprobado
1000044-33C	INGLÉS I- SEMESTRAL	4	4	8	P	3	1		AP
aprobado
2015734-33C	PROGRAMACIÓN DE COMPUTADORES	6	0	6	C	3	1		3.9
aprobado
2016749-33C	INTRODUCCIÓN A LA INGENIERÍA DE SISTEMAS	4	0	4	C	3	1		5.0
aprobado
3-0	RECONOCIMIENTO IDIOMA NIVEL I - II	0	0	0	P	6	1	F	AP
  02	periodo académico | 2013-I
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
no aprobado
1000004-33C	CÁLCULO DIFERENCIAL	4	0	4	B	4	1		2.0
aprobado
1000046-33C	INGLÉS III - SEMESTRAL	4	4	8	P	3	1		AP
aprobado
2016350-33C	MATEMÁTICAS DISCRETAS	4	0	4	B	4	1		3.1
no aprobado
2016375-33C	PROGRAMACIÓN ORIENTADA A OBJETOS	4	0	4	C	3	1		1.5
aprobado
2025336-33C	ELECTIVA EN LENGUA COREANA I	4	0	4	L	3	1		3.0
aprobado
2018156-33C	CORO UNIVERSITARIO I	5	0	5	L	2	1		4.1
  03	periodo académico | 2013-II
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000004-27	CÁLCULO DIFERENCIAL	4	0	4	B	4	2		3.7
no aprobado
2015172-3	GEOMETRÍA ELEMENTAL	4	0	4	L	4	1		2.1
aprobado
2018157-1	CORO UNIVERSITARIO II	5	0	5	L	2	1		4.7
  04	periodo académico | 2014-I
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000003-21	ÁLGEBRA LINEAL	4	0	4	B	4	1		3.2
no aprobado
1000005-5	CÁLCULO INTEGRAL	4	0	4	B	4	1		2.3
aprobado
2016375-1	PROGRAMACIÓN ORIENTADA A OBJETOS	4	0	4	C	3	2		4.2
aprobado
2016698-4	ELEMENTOS DE COMPUTADORES	4	0	4	C	3	1		4.3
aprobado
2018159-1	CORO UNIVERSITARIO IV	5	0	5	L	2	1		5.0
  05	periodo académico | 2014-II
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
2016353-2	BASES DE DATOS	4	0	4	C	3	1		3.3
aprobado
2016697-3	ARQUITECTURA DE COMPUTADORES	4	0	4	C	3	1		4.0
aprobado
2016699-1	ESTRUCTURAS DE DATOS	4	0	4	C	3	1		3.5
aprobado
2018158-1	CORO UNIVERSITARIO III	5	0	5	L	2	1		4.9
  06	periodo académico | 2015-I
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000005-3	CÁLCULO INTEGRAL	4	0	4	B	4	3		4.3
aprobado
2015174-2	INTRODUCCIÓN A LA TEORÍA DE LA COMPUTACIÓN	4	0	4	B	4	1		3.9
aprobado
2016788-1	TECNOLOGÍA DIGITAL	4	0	4	L	3	1		4.6
aprobado
2016707-1	SISTEMAS OPERATIVOS	4	0	4	C	3	1		3.1
  07	periodo académico | 2015-II
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000006-19	CÁLCULO EN VARIAS VARIABLES	4	0	4	B	4	1		3.2
aprobado
1000019-6	FUNDAMENTOS DE MECÁNICA	6	0	6	B	4	1		3.7
aprobado
1000013-4	PROBABILIDAD Y ESTADÍSTICA FUNDAMENTAL	4	0	4	B	3	1		4.2
aprobado
2025964-2	MATEMÁTICAS DISCRETAS II	4	0	4	B	4	1		4.0
  08	periodo académico | 2016-I
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000017-6	FUNDAMENTOS DE ELECTRICIDAD Y MAGNETISMO	6	0	6	B	4	1		3.1
aprobado
2015703-5	INGENIERÍA ECONÓMICA	4	0	4	B	3	1		3.8
aprobado
2015970-9	MÉTODOS NUMÉRICOS	4	0	4	B	3	1		3.0
aprobado
2016701-1	INGENIERÍA DE SOFTWARE I	4	0	4	C	3	1		3.7
aprobado
2025970-1	MODELOS Y SIMULACIÓN	4	0	4	C	3	1		3.7
  09	periodo académico | 2016-II
código-gr	curso	HAP	HAI	THS	tip	C	N	S	cal.
aprobado
1000047-16	INGLÉS IV- SEMESTRAL	4	4	8	P	3	1		AP
aprobado
2015702-1	GERENCIA Y GESTIÓN DE PROYECTOS	4	0	4	B	3	1		3.8
aprobado
1000011-3	FUNDAMENTOS DE ECOLOGÍA	4	0	4	L	3	1		3.5
aprobado
2016696-2	ALGORITMOS	4	0	4	B	3	1		4.1
aprobado
2027290-1	CÁTEDRA JOSÉ CELESTINO MUTIS: CÁTEDRA DEL MAR	3	0	3	L	3	1		4.7
aprobado
2025967-3	REDES DE COMPUTADORES	4	0	4	C	3	1		4.5

Promedio Académico	[3.8]
Promedio Aritmético Ponderado Acumulado - PAPA	[3.6]

63.0%
% de avance en los creditos exigidos del plan de estudios




créditos	plan de estudios	nivel	total estudiante
fundam.	discipl.	libre e.	total
exigidos	51	81	33	165	16	181
aprobados	51	33	20	104	19	123
aprobados plan	51	33	20	104	--	104
pendientes	0	48	13	61	0	61
inscritos	59	42	29	130	13	143
Créditos excedentes	Fundamentación	0	Disciplinar-Profesional	0	Total créditos excedentes	0
Total de créditos cancelados en los periodos cursados	11
resumen de créditos
Cupo adicional de créditos	80
Cupo créditos	112
cupo de créditos menos créditos pendientes	51


versión impresión

inicio | comentarios y sugerencias | preguntas frecuentes | descarga de archivos | mapa del sitio | noticias | términos de uso
Sistema de Información Académica [Nivel Nacional]
Ciudad Universitaria, Cra 30 # 45-03 - Edificio 103 Polideportivo 2 Piso, Bogotá - Colombia | www.registro.unal.edu.co | divregistro_bog@unal.edu.co
Actualizado: 1 de Marzo de 2017 | Todos los derechos reservados ©Universidad Nacional de Colombia 2017"
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
  end
end
