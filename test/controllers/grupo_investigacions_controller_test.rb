require 'test_helper'

class GrupoInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_investigacion = grupo_investigacions(:one)
  end

  test "should get index" do
    get grupo_investigacions_url, as: :json
    assert_response :success
  end

  test "should create grupo_investigacion" do
    assert_difference('GrupoInvestigacion.count') do
      post grupo_investigacions_url, params: { grupo_investigacion: { nombre: @grupo_investigacion.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show grupo_investigacion" do
    get grupo_investigacion_url(@grupo_investigacion), as: :json
    assert_response :success
  end

  test "should update grupo_investigacion" do
    patch grupo_investigacion_url(@grupo_investigacion), params: { grupo_investigacion: { nombre: @grupo_investigacion.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy grupo_investigacion" do
    assert_difference('GrupoInvestigacion.count', -1) do
      delete grupo_investigacion_url(@grupo_investigacion), as: :json
    end

    assert_response 204
  end
end
