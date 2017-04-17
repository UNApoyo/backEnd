Rails.application.routes.draw do
  resources :requisito_asignaturas
  resources :area_investigacions
  resources :areas
  resources :historia_academicas
  resources :carrera_investigacions
  resources :carrera_asignaturas
  resources :carreras
  resources :estudiantes
  resources :profesor_investigacions
  resources :grupo_investigacions
  resources :profesor_grados
  resources :profesors
  resources :trabajo_grados
  resources :enfoque_asignaturas
  resources :enfoques
  resources :asignaturas
  resources :prerequisitos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :historia_academicas do
    member do
      get 'promedioArea'
    end
  end

  resources :historia_academicas do
    member do
      get 'promedioTipologia'
    end
  end

  resources :asignaturas do
    member do
      get 'porcentajeTipologia'
    end
  end

  resources :asignaturas do
    member do
      get 'porcentajeArea'
    end
  end

  resources :asignaturas do
    member do
      get 'sugerenciaEnfoque'
    end
  end

  resources :carreras do
    member do
      get 'sugerenciaTrabajoGrado'
    end
  end

end
