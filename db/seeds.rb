<<<<<<< HEAD

Carrera.create(nombre:'Ingenieria Agricola',creditos:180)
Carrera.create(nombre:'Ingenieria Civil',creditos:180)
Carrera.create(nombre:'Ingenieria de Sistema y Computacion',creditos:165)
Carrera.create(nombre:'Ingenieria Electrica',creditos:167)
Carrera.create(nombre:'Ingenieria Electronica',creditos:172)
Carrera.create(nombre:'Ingenieria Indusctrial',creditos:168)
Carrera.create(nombre:'Ingenieria Mecanica',creditos:180)
Carrera.create(nombre:'Ingenieria Mecatronica',creditos:179)
Carrera.create(nombre:'Ingenieria Quimica',creditos:180)

Materium.create(nombre:'Calculo Diferencial',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Calculo Diferencial en una Variable',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Algebra Lineal',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Algebra Lineal Basica',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Calculo Integral',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Calculo Integral en una Variable',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Calculo en Varias Variables',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Calculo Vectorial',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Ecuaciones Diferenciales',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Calculo de Ecuaciones Diferenciales',4,tipo:'Fundamentacion')
Materium.create(nombre:'Probabilidad',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Inferencia Estadistica',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Fundamentos de Mecanica',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Fundamentos de Electricidad y Magnetismo',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Programacion de Computadores',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Programacion Orientada a Objetos',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Fundamentos de Oscilaciones, Ondas y Optica',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Bilogia General',creditos: 3,tipo:'Fundamentacion')
Materium.create(nombre:'Principio de Quimica',creditos: 3,tipo:'Fundamentacion')
Materium.create(nombre:'Fisiologia Vegetal',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Dibujo Basico',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Metodos Numericos',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Modelacion Matematica',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Aplicacion de Elementos Finitos',creditos: 4,tipo:'Fundamentacion')
Materium.create(nombre:'Modelos y Simulacion',creditos: 4,tipo:'Fundamentacion')
>>>>>>> 0d68160c947c783c6396a1642d7935e847714425

#poblando base de datos, se hace uso de la gema Faker para llenar campos con nombres aleatorios
#por el momento
#se personalizara el Faker para que haga random de nombres de materias, grupos, profesores etc.

=begin
task :sample_data => :environment do
require 'faker'
end

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
   make_materias
   make_profesors
  end
end

def make_materias
   Materium.create!(nombre: "calculo",
                creditos: 4,
                tipo: "Fundamentacion",
                area: "matematicas"
                )
   100.times do |n|
    nombre =  Faker::Name.name
    creditos =  (rand * 5).to_i
    tipo = Faker::AddressUS.city_suffix #customizar esta parte cambiar por tipo
    area  = Faker::Book.title.zip_code #customizar esta parte, cambiar por area
    Materium.create!(nombre: nombre,
                 creditos: creditos,
                 tipo: tipo,
                 area: area
                 )
   end
end
def make_carreras
   carrera.create!(nombre: "ingenieria de sistemas",
                creditos: 180
                )
   100.times do |n|
    nombre =  Faker::Name.name
    creditos =  (rand * 5).to_i
    carrera.create!(nombre: nombre,
                 creditos: creditos
                 )
   end
end
def make_profesors
   profesor.create!(nombre: "ingenieria de sistemas",
                oficina: 401
                )
   100.times do |n|
    nombre =  Faker::Name.name
    oficina =  (rand * 5).to_i
    profesor.create!(nombre: nombre,
                 oficina: oficina
                 )
   end
end
def make_grado
   trabajo_grado.create!(nombre: "tesis x"
                )
   100.times do |n|
    nombre =  Faker::Name.name
    trabajo_grado.create!(nombre: nombre
                 )
   end
end

def make_profesor_investigacion
   profesor_investigacion.create!(profesor_id: 345555,
                              grupo_investigacion_id: 1234
                )
   100.times do |n|
    profesor_id =  (rand * 5).to_i
    grupo_investigacion_id = (rand * 5).to_i
    profesor_investigacion.create!(profesor_id: nombre,
                            grupo_investigacion_id: grupo_investigacion_id
                 )
   end
end

def make_grupo_investigacion
   grupo_investigacion.create!(nombre: "tlon"
                )
   100.times do |n|
    nombre =  Faker::Name.name
    grupo_investigacion.create!(nombre: nombre
                 )
   end
end
=end
