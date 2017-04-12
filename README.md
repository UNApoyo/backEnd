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
