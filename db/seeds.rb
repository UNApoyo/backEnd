#Agregar UNApoyo.yml al lib/locale de la gema faker, para hacer esto:
#ejecutar en el terminal :  cd `gem environment gemdir`
#despues:
#cd gems
#cd faker-1.7.3/
#cd lib/locales
#pegar UNApoyo.yml ahi

  Area.create(nombre:'Matematicas')#1
  Area.create(nombre:'Probabilidad y Estadistica')#2
  Area.create(nombre:'Ciencias de la Computacion')#3
  Area.create(nombre:'Fisica')#4
  Area.create(nombre:'Ciencias Economicas y Administrativas')#5
  Area.create(nombre:'Metodos y Tecnologias de Software')#6
  Area.create(nombre:'Infraestructura comput de com y de inf')#7
  Area.create(nombre:'Computacion aplic e inteligencia comput')#8
  Area.create(nombre:'Sistemas Inteligentes')#9
  Area.create(nombre:'Sistemas Modelos Optimizacion y Simulacion')#10
  Area.create(nombre:'Contexto prof y Proyectos de Ingenieria')#11
  Area.create(nombre:'Trabajo de Grado')#12
  Area.create(nombre:'Quimica y Biologia')#13
  Area.create(nombre:'Expresion Grafica')#14
  Area.create(nombre:'Herramientas de Ingenieria')#15
  Area.create(nombre:'Ciencias de los Materiales')#16

  Asignatura.create(nombre:'Algebra Lineal',creditos: 4,tipologia:'Fundamentacion',codigo:1000003,area_id:1)
  Asignatura.create(nombre:'Algebra Lineal Basica',creditos: 4,tipologia:'Fundamentacion',codigo:2015555,area_id:1)
  Asignatura.create(nombre:'Aplicaciones de Elementos Finitos',creditos: 4,tipologia:'Fundamentacion',codigo:2015942,area_id:1)
  Asignatura.create(nombre:'Arquitectura de Computadores',creditos: 3,tipologia:'Disciplinar',codigo:2016697,area_id:7)
  Asignatura.create(nombre:'Arquitectura de Software',creditos: 3,tipologia:'Disciplinar',codigo:2016716,area_id:6)
  Asignatura.create(nombre:'Arquitectura de Infraestructura y Gobierno de Tics',creditos: 3,tipologia:'Disciplinar',codigo:2025983,area_id:7)
  Asignatura.create(nombre:'Bases de Datos',creditos: 3,tipologia:'Disciplinar',codigo:2016353,area_id:7)
  Asignatura.create(nombre:'Bilogia General',creditos: 3,tipologia:'Fundamentacion',codigo:1000009,area_id:13)
  Asignatura.create(nombre:'Calculo de Ecuaciones Diferenciales',creditos: 4,tipologia:'Fundamentacion',codigo:2016342,area_id:1)
  Asignatura.create(nombre:'Calculo Diferencial',creditos: 4,tipologia:'Fundamentacion',codigo:1000004,area_id:1)
  Asignatura.create(nombre:'Calculo Diferencial en una Variable',creditos: 4,tipologia:'Fundamentacion',codigo:2016377,area_id:1)
  Asignatura.create(nombre:'Calculo Integral',creditos: 4,tipologia:'Fundamentacion',codigo:1000005,area_id:1)
  Asignatura.create(nombre:'Calculo Integral en una Variable',creditos: 4,tipologia:'Fundamentacion',codigo:2015556,area_id:1)
  Asignatura.create(nombre:'Calculo en Varias Variables',creditos: 4,tipologia:'Fundamentacion',codigo:1000006,area_id:1)
  Asignatura.create(nombre:'Calculo Vectorial',creditos: 4,tipologia:'Fundamentacion',codigo:2015162,area_id:1)
  Asignatura.create(nombre:'Computacion Paralela y Distribuida',creditos: 3,tipologia:'Disciplinar',codigo:2016722,area_id:7)
  Asignatura.create(nombre:'Computacion Visual',creditos: 3,tipologia:'Disciplinar',codigo:2025960,area_id:8)
  Asignatura.create(nombre:'Criptografia y Seguridad de la Informacion',creditos: 3,tipologia:'Disciplinar',codigo:2025972,area_id:7)
  Asignatura.create(nombre:'Dibujo Basico',creditos: 4,tipologia:'Fundamentacion',codigo:2015711,area_id:14)
  Asignatura.create(nombre:'Ecuaciones Diferenciales',creditos: 4,tipologia:'Fundamentacion',codigo:1000007,area_id:1)
  Asignatura.create(nombre:'Elementos de Computadores',creditos: 3,tipologia:'Disciplinar',codigo:2016698,area_id:7)
  Asignatura.create(nombre:'Estructuras de Datos',creditos: 3,tipologia:'Disciplinar',codigo:2016699,area_id:6)
  Asignatura.create(nombre:'Fisiologia Vegetal',creditos: 4,tipologia:'Fundamentacion',codigo:2017538,area_id:13)
  Asignatura.create(nombre:'Fundamentos de Oscilaciones, Ondas y Optica',creditos: 4,tipologia:'Fundamentacion',codigo:1000020,area_id:4)
  Asignatura.create(nombre:'Fundamentos de Electricidad y Magnetismo',creditos: 4,tipologia:'Fundamentacion',codigo:1000017,area_id:4)
  Asignatura.create(nombre:'Fundamentos de Mecanica',creditos: 4,tipologia:'Fundamentacion',codigo:1000019,area_id:4)
  Asignatura.create(nombre:'Gerencia y Gestion de Proyectos',creditos: 3,tipologia:'Fundamentacion',codigo:2015702,area_id:5)
  Asignatura.create(nombre:'Ingenieria de Software I',creditos: 3,tipologia:'Disciplinar',codigo:2016701,area_id:6)
  Asignatura.create(nombre:'Inferencia Estadistica',creditos: 4,tipologia:'Fundamentacion',codigo:2016379,area_id:2)
  Asignatura.create(nombre:'Ingenieria Economica',creditos: 3,tipologia:'Fundamentacion',codigo:2015703,area_id:5)
  Asignatura.create(nombre:'Introduccion a la Ingenieria de Sistemas y Comp',creditos: 3,tipologia:'Disciplinar',codigo:2025975,area_id:11)
  Asignatura.create(nombre:'Introduccion a la Teoria de la Computacion',creditos: 4,tipologia:'Fundamentacion',codigo:2015174,area_id:3)
  Asignatura.create(nombre:'Introduccion a los Sistemas Inteligentes',creditos: 3,tipologia:'Disciplinar',codigo:2025995,area_id:8)
  Asignatura.create(nombre:'Lenguajes de Programacion',creditos: 3,tipologia:'Disciplinar',codigo:2025966,area_id:6)
  Asignatura.create(nombre:'Matematicas Discretas I',creditos: 4,tipologia:'Fundamentacion',codigo:2025963,area_id:3)
  Asignatura.create(nombre:'Matematicas Discretas II',creditos: 4,tipologia:'Fundamentacion',codigo:2025964,area_id:3)
  Asignatura.create(nombre:'Metodos Numericos',creditos: 4,tipologia:'Fundamentacion',codigo:2015970,area_id:1)
  Asignatura.create(nombre:'Modelacion Matematica',creditos: 4,tipologia:'Fundamentacion',codigo:2017293,area_id:10)
  Asignatura.create(nombre:'Modelos y Simulacion',creditos: 4,tipologia:'Fundamentacion',codigo:2025970,area_id:10)
  Asignatura.create(nombre:'Pensamiento Sistemico',creditos: 3,tipologia:'Disciplinar',codigo:2016703,area_id:10)
  Asignatura.create(nombre:'Principios de Quimica',creditos: 3,tipologia:'Fundamentacion',codigo:1000024,area_id:13)
  Asignatura.create(nombre:'Probabilidad',creditos: 4,tipologia:'Fundamentacion',codigo:2015178,area_id:2)
  Asignatura.create(nombre:'Programacion de Computadores',creditos: 4,tipologia:'Fundamentacion',codigo:2015734,area_id:6)
  Asignatura.create(nombre:'Programacion Orientada a Objetos',creditos: 4,tipologia:'Fundamentacion',codigo:2016375,area_id:6)
  Asignatura.create(nombre:'Probabilidad y Estadistica',creditos: 3,tipologia:'Fundamentacion',codigo:1000013,area_id:2)
  Asignatura.create(nombre:'Redes de Computadores',creditos: 3,tipologia:'Disciplinar',codigo:2025967,area_id:7)
  Asignatura.create(nombre:'Taller de Proyectos Interdisciplinarios',creditos: 3,tipologia:'Disciplinar',codigo:2024045,area_id:11)

  Carrera.create(nombre:'Ingenieria Agricola',creditos:180,codigo:2541)#1
  Carrera.create(nombre:'Ingenieria Civil',creditos:180,codigo:2542)#2
  Carrera.create(nombre:'Ingenieria de Sistemas y Computacion',creditos:165,codigo:2879)#3
  Carrera.create(nombre:'Ingenieria Electrica',creditos:167,codigo:2544)#4
  Carrera.create(nombre:'Ingenieria Electronica',creditos:172,codigo:2545)#5
  Carrera.create(nombre:'Ingenieria Industrial',creditos:168,codigo:2546)#6
  Carrera.create(nombre:'Ingenieria Mecanica',creditos:180,codigo:2547)#7
  Carrera.create(nombre:'Ingenieria Mecatronica',creditos:179,codigo:2548)#8
  Carrera.create(nombre:'Ingenieria Quimica',creditos:180,codigo:2549)#9

  Enfoque.create(nombre:'Ingenieria de Software',carrera_id:3)
  Enfoque.create(nombre:'Sistemas Inteligentes',carrera_id:3)
  Enfoque.create(nombre:'Hardware',carrera_id:3)
  Enfoque.create(nombre:'Bioinformatica y Computacion Bioinspirada',carrera_id:3)
  Enfoque.create(nombre:'Ingenieria Biomedica',carrera_id:3)
  Enfoque.create(nombre:'Telecomunicaciones',carrera_id:3)
  Enfoque.create(nombre:'Ciencias de la Computacion',carrera_id:3)
  Enfoque.create(nombre:'Modelos Optimizacion y Simulacion',carrera_id:3)
  Enfoque.create(nombre:'Vision y Robotica',carrera_id:3)
  Enfoque.create(nombre:'Computacion Interactiva y Creativa, Metodos Digitales y Animacion',carrera_id:3)
  Enfoque.create(nombre:'Ciencia de Datos',carrera_id:3)
  Enfoque.create(nombre:'Arquitectura y Gestion de Tecnologias de Informacion y las Comunicaciones',carrera_id:3)

#### para probar querys
GrupoInvestigacion.create(nombre:'nombre Grupito')
Profesor.create(nombre:'Don Wachu',info:'correo no se')
AreaInvestigacion.create(area_id:1,grupo_investigacion_id:1)
AreaInvestigacion.create(area_id:2,grupo_investigacion_id:2)
CarreraAsignatura.create(carrera_id:1,asignatura_id:1)
CarreraAsignatura.create(carrera_id:1,asignatura_id:2)
CarreraAsignatura.create(carrera_id:2,asignatura_id:3)
CarreraInvestigacion.create(carrera_id:1,grupo_investigacion_id:1)
EnfoqueAsignatura.create(enfoque_id:1,asignatura_id:1)
TrabajoGrado.create(nombre:'un trabajitogrado',carrera_id:3)
Estudiante.create(porcentaje_carrera:56,creditos_disponibles:34,creditos_aprobados:98,creditos_inscritos:15,creditos_pendientes:73,carrera_id:1)
HistoriaAcademica.create(calificacion:4,asignatura_id:1,estudiante_id:1)
HistoriaAcademica.create(calificacion:4.5,asignatura_id:2,estudiante_id:1)
HistoriaAcademica.create(calificacion:2.5,asignatura_id:7,estudiante_id:1)
ProfesorGrado.create(profesor_id:1,trabajo_grado_id:1)
ProfesorInvestigacion.create(profesor_id:1,investigacion_id:1)



=begin

require 'faker'
Faker::Config.locale = 'UNApoyo'
def make_asignaturas
 100.times do |n|
  nombre =  Faker::Name.subject
  creditos =  Faker::Name.credits_subject
  tipo = Faker::Name.type
  codigo = Faker::Name.materia_id
  pre = Faker::Name.materia_id
  Asignatura.create!(nombre: nombre,
               creditos: creditos,
               tipologia: tipo,
               codigo: codigo,
               prerequisito_id: pre
               )
 end
end
def make_carreras
 10.times do |n|
  nombre =  Faker::Name.major
  creditos =  Faker::Name.credits
  codigo = Faker::Name.carrera_id
  enfoque_id = Faker::Name.enfoque_id
  trabajo_grado_id = Faker::Name.grado_id
  estudiante_id = Faker::Name.estudiante_id
  Carrera.create!(nombre: nombre,
               creditos: creditos, codigo: codigo,
               enfoque_id: enfoque_id,
               trabajo_grado_id: trabajo_grado_id,
               estudiante_id: estudiante_id
               )
 end
end
def make_profesors
 100.times do |n|
  nombre =  Faker::Name.name
  info =  Faker::Name.office
  Profesor.create!(nombre: nombre,
               info: info
               )
 end
end
def make_grado
 100.times do |n|
  nombre =  Faker::Name.thesis
  TrabajoGrado.create!(nombre: nombre
               )
 end
end

def make_profesor_investigacion
 100.times do |n|
  profesor_id =  Faker::Name.profesor_id #id o nombre en nuevo modelo?
  grupo_investigacion_id = Faker::Name.grupo_investigacion_id #ids??
  ProfesorInvestigacion.create!(profesor_id: profesor_id,
                          investigacion_id: grupo_investigacion_id
               )
 end
end

def make_grupo_investigacion
 100.times do |n|
  nombre =  Faker::Name.group
  GrupoInvestigacion.create!(nombre: nombre
               )
 end
end

def make_area_investigacion
100.times do |n|
  area_id = Faker::Name.area_id
  area_grupo_investigacion_id = Faker::Name.grupo_investigacion_id
  AreaInvestigacion.create!(area_id: area_id, grupo_investigacion_id: area_grupo_investigacion_id)
end
end

def make_area
10.times do |n|
  nombre = Faker::Name.area
  Area.create!(nombre: nombre)
end
end

def make_carrera_asignatura
100.times do |n|
  carrera_id = Faker::Name.carrera_id
  asignatura_id = Faker::Name.materia_id
  CarreraAsignatura.create!(carrera_id: carrera_id, asignatura_id: asignatura_id)
end
end

def make_carrera_investigacion
100.times do |n|
  carrera_id = Faker::Name.carrera_id
  grupo_investigacion_id = Faker::Name.grupo_investigacion_id
  CarreraInvestigacion.create!(carrera_id: carrera_id, grupo_investigacion_id: grupo_investigacion_id)
end
end

def make_enfoque_asignaturas
100.times do |n|
  enfoque_id = Faker::Name.enfoque_id
  asignatura_id = Faker::Name.materia_id
  EnfoqueAsignatura.create!(enfoque_id: enfoque_id, asignatura_id: asignatura_id)
end
end

def make_enfoques
100.times do |n|
  nombre = Faker::Name.enfoque
  Enfoque.create!(nombre: nombre)
end
end

def make_estudiantes
100.times do |n|
  #nombre = Faker::Name.name
  porcentaje = Faker::Name.porcentaje
  creditos_disp = Faker::Name.credits
  creditos_aprob = Faker::Name.credits
  creditos_inscritos = Faker::Name.credits
  creditos_pendientes = Faker::Name.credits
  Estudiante.create!(porcentaje_carrera: porcentaje,
                    creditos_disponibles: creditos_disp,
                    creditos_aprobados: creditos_aprob,
                    creditos_inscritos: creditos_inscritos,
                    creditos_pendientes: creditos_pendientes
                    )
end
end

def make_historia_academica
100.times do |n|
  calificacion = Faker::Name.calificacion
  asignatura_id = Faker::Name.materia_id
  estudiante_id = Faker::Name.estudiante_id
  HistoriaAcademica.create!(calificacion: calificacion,
                            asignatura_id: asignatura_id,
                            estudiante_id: estudiante_id,
                            )
end
end

def make_prerequisitos
100.times do |n|
  requisito = Faker::Name.subject
  requisito_de = Faker::Name.subject
  Prerequisito.create!(requisito: requisito ,requisito_de: requisito_de)
end
end

def make_profesor_grado
100.times do |n|
  profesor_id = Faker::Name.profesor_id
  trabajo_grado_id = Faker::Name.grado_id
  ProfesorGrado.create!(profesor_id: profesor_id, trabajo_grado_id: trabajo_grado_id)
end
end
make_asignaturas
make_grado
make_enfoques
make_grupo_investigacion
make_prerequisitos
make_profesors
make_estudiantes
make_area
make_carreras
make_historia_academica
make_carrera_asignatura
make_carrera_investigacion
make_enfoque_asignaturas
make_profesor_grado
make_area_investigacion
make_profesor_investigacion
=end
