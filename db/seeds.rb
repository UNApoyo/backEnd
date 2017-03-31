#poblando base de datos, se hace uso de la gema Faker para llenar campos con nombres aleatorios
#por el momento
#se personalizara el Faker para que haga random de nombres de materias, grupos, profesores etc.

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
