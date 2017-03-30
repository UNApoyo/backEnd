json.extract! estudiante, :id, :porcentaje_carrera, :creditos_disponibles, :creditos_aprobados, :creditos_inscritos, :creditos_pendientes, :materia_id, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
