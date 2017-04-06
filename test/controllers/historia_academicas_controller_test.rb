require 'test_helper'

class HistoriaAcademicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historia_academica = historia_academicas(:one)
  end

  test "should get index" do
    get historia_academicas_url, as: :json
    assert_response :success
  end

  test "should create historia_academica" do
    assert_difference('HistoriaAcademica.count') do
      post historia_academicas_url, params: { historia_academica: { asignatura_id: @historia_academica.asignatura_id, calificacion: @historia_academica.calificacion, estudiante_id: @historia_academica.estudiante_id } }, as: :json
    end

    assert_response 201
  end

  test "should show historia_academica" do
    get historia_academica_url(@historia_academica), as: :json
    assert_response :success
  end

  test "should update historia_academica" do
    patch historia_academica_url(@historia_academica), params: { historia_academica: { asignatura_id: @historia_academica.asignatura_id, calificacion: @historia_academica.calificacion, estudiante_id: @historia_academica.estudiante_id } }, as: :json
    assert_response 200
  end

  test "should destroy historia_academica" do
    assert_difference('HistoriaAcademica.count', -1) do
      delete historia_academica_url(@historia_academica), as: :json
    end

    assert_response 204
  end
end
