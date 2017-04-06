require 'test_helper'

class CarreraInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrera_investigacion = carrera_investigacions(:one)
  end

  test "should get index" do
    get carrera_investigacions_url, as: :json
    assert_response :success
  end

  test "should create carrera_investigacion" do
    assert_difference('CarreraInvestigacion.count') do
      post carrera_investigacions_url, params: { carrera_investigacion: { carrera_id: @carrera_investigacion.carrera_id, grupo_investigacion_id: @carrera_investigacion.grupo_investigacion_id } }, as: :json
    end

    assert_response 201
  end

  test "should show carrera_investigacion" do
    get carrera_investigacion_url(@carrera_investigacion), as: :json
    assert_response :success
  end

  test "should update carrera_investigacion" do
    patch carrera_investigacion_url(@carrera_investigacion), params: { carrera_investigacion: { carrera_id: @carrera_investigacion.carrera_id, grupo_investigacion_id: @carrera_investigacion.grupo_investigacion_id } }, as: :json
    assert_response 200
  end

  test "should destroy carrera_investigacion" do
    assert_difference('CarreraInvestigacion.count', -1) do
      delete carrera_investigacion_url(@carrera_investigacion), as: :json
    end

    assert_response 204
  end
end
