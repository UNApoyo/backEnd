# backEnd
real backend

QUERYS
Carrera:
  get_carreras    <- lista de carreras
  det_carrera     <- datos de una carrera
  of_estudiante   <-carrera de un estudiante
  of_asignatura   <- carrera que tiene la asignatura x
  of_investigacion  <-carreras asociadas a un grupo de investigacion x

Area:
  get_areas     <- lista de areas
  of_asignatura   <- area de una asignatura
  of_investigacion  <- areas relacionadas con un grupo de investigacion x

Asignatura:
  of_area     <- asignaturas de un area
  of_tipologia  <-asignaturas de una tipologia
  of_historia   <-asignaturas de un estudiante
  of_carrera    <-asignatura de una carrera
  of_enfoque    <- asignatura de un enfoque
  area_estudiante <-asignaturas de un estudiante x con area y
  estudiante_tipo <-asignaturas de un estudiante x con tipologia y
  enfoque_estudiante  <-asignaturas de un estudiante x de una tipologia y

GrupoInvestigacion:
  get_investigaciones   <-lista de grupos de investigacion
  of_carrera      <-grupos de investigacion de una carrera x
  of_area         <- grupos e investigacion asociados a un area x

Enfoque:
  of_carrera   <- enfoques de una carrera
  of_asignatura <-enfoques relacionados a una asignatura x

TrabajoGrado:
  get_grados  <- lista de trabajos de grado
  of_carrera   <-trabajos de grado de una carrera

HistoriaAcademica:
  best_calificacion
  worst_calificacion

Profesor:
  of_grado    <-profesores asociados a un trabajo de grado x
  of_investigacion    <-profesores asociadosa un grupo de investigacion x
