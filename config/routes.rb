Rails.application.routes.draw do
  resources :historia_academicas
  resources :estudiantes
  resources :carrera_investigacions
  resources :carrera_materia
  resources :carreras
  resources :profesor_grados
  resources :trabajo_grados
  resources :profesor_investigacions
  resources :profesors
  resources :materia_investigacions
  resources :grupo_investigacions
  resources :enfoque_materia
  resources :materia
  resources :enfoques
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
