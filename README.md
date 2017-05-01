# backEnd
real backend

QUERYS
Carrera:
  get_carreras    <- lista de carreras
  det_carrera(nombre carrera)     <- datos de una carrera
  of_estudiante(id estudiante)   <-carrera de un estudiante
  of_asignatura(id asignatura)   <- carrera que tiene la asignatura x
  of_investigacion(id investigacion)  <-carreras asociadas a un grupo de investigacion x

Area:
  get_areas                             <- lista de areas
  of_asignatura(nombre asignatura)         <- area de una asignatura
  of_investigacion(grupo_investigacion_id)  <- areas relacionadas con un grupo de investigacion x

Asignatura:
  of_area(nombre area)               <- asignaturas de un area
  of_tipologia(nombre tipologia)       <-asignaturas de una tipologia
  of_historia(id estudiante)           <-asignaturas de un estudiante
  of_carrera(id carrera)                <-asignatura de una carrera
  of_enfoque(id enfoque)           <- asignatura de un enfoque
  area_estudiante(id area,id estudiante)      <-asignaturas de un estudiante x con area y
  estudiante_tipo(nombre tipologia)         <-asignaturas de un estudiante x con tipologia y
  enfoque_estudiante(id enfoque, id estudiante)  <-asignaturas de un estudiante x que pertenecen a enfoque y

GrupoInvestigacion:
  get_investigaciones   <-lista de grupos de investigacion
  of_carrera(id carrera)      <-grupos de investigacion de una carrera x
  of_area(id area)         <- grupos e investigacion asociados a un area x

Enfoque:
  of_carrera(nombre carrera)   <- enfoques de una carrera
  of_asignatura(id asignatura) <-enfoques relacionados a una asignatura x

TrabajoGrado:
  get_grados  <- lista de trabajos de grado
  of_carrera(nombre carrera)   <-trabajos de grado de una carrera

HistoriaAcademica:
  best_calificacion
  worst_calificacion

Profesor:
  of_grado(id grado)    <-profesores asociados a un trabajo de grado x
  of_investigacion(id investigacion)    <-profesores asociadosa un grupo de investigacion x

  RequisitoAsignatura:
    of_asignatura(id asignatura)   <-prerequisitos de una asignatura

RUTAS

historia_academicas

    localhost:3000/historia_academicas/promedio_area
    localhost:3000/historia_academicas/promedio_area?area_id=1 -> ejemplo

    localhost:3000/historia_academicas/promedio_tipologia
    localhost:3000/historia_academicas/promedio_tipologia?tipologia="Fundamentacion" -> ejemplo

    localhost:3000/historia_academicas/best_calificacion

    localhost:3000/historia_academicas/worst_calificacion


asignaturas

    localhost:3000/asignaturas/porcentaje_tipologia
    localhost:3000/asignaturas/porcentaje_tipologia?estudiante_id=1&tipologia="Fundamentación"&carrera_id=1 -> ejemplo

    localhost:3000/asignaturas/porcentaje_area
    localhost:3000/asignaturas/porcentaje_area?estudiante_id=1&area_id=1&carrera_id=1 -> ejemplo

    localhost:3000/asignaturas/sugerencia_enfoque/:page/:per_page/:estudiante_id/:area_id/:carrera_id



trabajo_grados

    localhost:3000/trabajo_grados/sugerencia_tesis/:page/:per_page/:estudiante_id


areas

    localhost:3000/areas/porcentajes
    localhost:3000/areas/porcentajes?estudiante_id=1&carrera_id=1
