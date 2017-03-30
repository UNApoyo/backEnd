require 'test_helper'

class EstudiantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudiante = estudiantes(:one)
  end

  test "should get index" do
    get estudiantes_url
    assert_response :success
  end

  test "should get new" do
    get new_estudiante_url
    assert_response :success
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post estudiantes_url, params: { estudiante: { creditos_aprobados: @estudiante.creditos_aprobados, creditos_disponibles: @estudiante.creditos_disponibles, creditos_inscritos: @estudiante.creditos_inscritos, creditos_pendientes: @estudiante.creditos_pendientes, materia_id: @estudiante.materia_id, porcentaje_carrera: @estudiante.porcentaje_carrera } }
    end

    assert_redirected_to estudiante_url(Estudiante.last)
  end

  test "should show estudiante" do
    get estudiante_url(@estudiante)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudiante_url(@estudiante)
    assert_response :success
  end

  test "should update estudiante" do
    patch estudiante_url(@estudiante), params: { estudiante: { creditos_aprobados: @estudiante.creditos_aprobados, creditos_disponibles: @estudiante.creditos_disponibles, creditos_inscritos: @estudiante.creditos_inscritos, creditos_pendientes: @estudiante.creditos_pendientes, materia_id: @estudiante.materia_id, porcentaje_carrera: @estudiante.porcentaje_carrera } }
    assert_redirected_to estudiante_url(@estudiante)
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete estudiante_url(@estudiante)
    end

    assert_redirected_to estudiantes_url
  end
end
