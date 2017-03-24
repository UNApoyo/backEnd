require 'test_helper'

class CarreraInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrera_investigacion = carrera_investigacions(:one)
  end

  test "should get index" do
    get carrera_investigacions_url
    assert_response :success
  end

  test "should get new" do
    get new_carrera_investigacion_url
    assert_response :success
  end

  test "should create carrera_investigacion" do
    assert_difference('CarreraInvestigacion.count') do
      post carrera_investigacions_url, params: { carrera_investigacion: { carrera_id: @carrera_investigacion.carrera_id, grupo_investigacion_id: @carrera_investigacion.grupo_investigacion_id } }
    end

    assert_redirected_to carrera_investigacion_url(CarreraInvestigacion.last)
  end

  test "should show carrera_investigacion" do
    get carrera_investigacion_url(@carrera_investigacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrera_investigacion_url(@carrera_investigacion)
    assert_response :success
  end

  test "should update carrera_investigacion" do
    patch carrera_investigacion_url(@carrera_investigacion), params: { carrera_investigacion: { carrera_id: @carrera_investigacion.carrera_id, grupo_investigacion_id: @carrera_investigacion.grupo_investigacion_id } }
    assert_redirected_to carrera_investigacion_url(@carrera_investigacion)
  end

  test "should destroy carrera_investigacion" do
    assert_difference('CarreraInvestigacion.count', -1) do
      delete carrera_investigacion_url(@carrera_investigacion)
    end

    assert_redirected_to carrera_investigacions_url
  end
end
