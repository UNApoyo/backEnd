#Agregar UNApoyo.yml al lib/locale de la gema faker, para hacer esto:
#ejecutar en el terminal :  cd `gem environment gemdir`
#despues:
#cd gems
#cd faker-1.7.3/
#cd lib/locales
#pegar UNApoyo.yml ahi


    Carrera.create(nombre:'Ingenieria Agricola',creditos:180)
    Carrera.create(nombre:'Ingenieria Civil',creditos:180)
    Carrera.create(nombre:'Ingenieria de Sistemas y Computacion',creditos:165)
    Carrera.create(nombre:'Ingenieria Electrica',creditos:167)
    Carrera.create(nombre:'Ingenieria Electronica',creditos:172)
    Carrera.create(nombre:'Ingenieria Industrial',creditos:168)
    Carrera.create(nombre:'Ingenieria Mecanica',creditos:180)
    Carrera.create(nombre:'Ingenieria Mecatronica',creditos:179)
    Carrera.create(nombre:'Ingenieria Quimica',creditos:180)

    Asignatura.create(nombre:'Calculo Diferencial',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Calculo Diferencial en una Variable',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Algebra Lineal',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Algebra Lineal Basica',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Calculo Integral',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Calculo Integral en una Variable',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Calculo en Varias Variables',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Calculo Vectorial',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Ecuaciones Diferenciales',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Calculo de Ecuaciones Diferenciales',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Probabilidad',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Inferencia Estadistica',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Fundamentos de Mecanica',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Fundamentos de Electricidad y Magnetismo',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Programacion de Computadores',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Programacion Orientada a Objetos',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Fundamentos de Oscilaciones, Ondas y Optica',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Bilogia General',creditos: 3,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Principio de Quimica',creditos: 3,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Fisiologia Vegetal',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Dibujo Basico',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Metodos Numericos',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Modelacion Matematica',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Aplicacion de Elementos Finitos',creditos: 4,tipologia:'Fundamentacion')
    Asignatura.create(nombre:'Modelos y Simulacion',creditos: 4,tipologia:'Fundamentacion')

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
