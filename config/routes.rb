Rails.application.routes.draw do
  resources :requisito_asignaturas
  resources :area_investigacions

  #resources :historia_academicas
  resources :carrera_investigacions
  resources :carrera_asignaturas
  resources :carreras
  resources :estudiantes
  resources :profesor_investigacions
  resources :grupo_investigacions
  resources :profesor_grados
  resources :profesors
  #resources :trabajo_grados
  resources :enfoque_asignaturas
  resources :enfoques
  #resources :asignaturas
  resources :prerequisitos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :historia_academicas do
    collection do
      get 'promedio_area', to: "historia_academicas#promedioArea"
      get 'promedio_tipologia', to: "historia_academicas#promedioTipologia"
    end
  end


  resources :asignaturas do
    collection do
      get 'porcentaje_tipologia', to: "asignaturas#porcentajeTipologia"
      get 'porcentaje_area', to: "asignaturas#porcentajeArea"
      get 'sugerencia_enfoque/:page/:per_page/:estudiante_id/:area_id/:carrera_id', to: "asignaturas#sugerenciaEnfoque"

    end
  end

  resources :trabajo_grados do
    collection do
      get 'sugerencia_tesis/:page/:per_page/:estudiante_id', to: "trabajo_grados#sugerenciaTrabajoGrado"
    end
  end
  resources :areas do
    collection do
      get 'porcentajes', to: "areas#porcentajes"
    end
  end

end
