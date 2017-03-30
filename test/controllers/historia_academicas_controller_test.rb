require 'test_helper'

class HistoriaAcademicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historia_academica = historia_academicas(:one)
  end

  test "should get index" do
    get historia_academicas_url
    assert_response :success
  end

  test "should get new" do
    get new_historia_academica_url
    assert_response :success
  end

  test "should create historia_academica" do
    assert_difference('HistoriaAcademica.count') do
      post historia_academicas_url, params: { historia_academica: { calificacion: @historia_academica.calificacion, estudiante_id: @historia_academica.estudiante_id, materia_id: @historia_academica.materia_id } }
    end

    assert_redirected_to historia_academica_url(HistoriaAcademica.last)
  end

  test "should show historia_academica" do
    get historia_academica_url(@historia_academica)
    assert_response :success
  end

  test "should get edit" do
    get edit_historia_academica_url(@historia_academica)
    assert_response :success
  end

  test "should update historia_academica" do
    patch historia_academica_url(@historia_academica), params: { historia_academica: { calificacion: @historia_academica.calificacion, estudiante_id: @historia_academica.estudiante_id, materia_id: @historia_academica.materia_id } }
    assert_redirected_to historia_academica_url(@historia_academica)
  end

  test "should destroy historia_academica" do
    assert_difference('HistoriaAcademica.count', -1) do
      delete historia_academica_url(@historia_academica)
    end

    assert_redirected_to historia_academicas_url
  end
end
