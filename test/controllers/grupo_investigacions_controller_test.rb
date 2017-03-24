require 'test_helper'

class GrupoInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_investigacion = grupo_investigacions(:one)
  end

  test "should get index" do
    get grupo_investigacions_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_investigacion_url
    assert_response :success
  end

  test "should create grupo_investigacion" do
    assert_difference('GrupoInvestigacion.count') do
      post grupo_investigacions_url, params: { grupo_investigacion: { nombre: @grupo_investigacion.nombre } }
    end

    assert_redirected_to grupo_investigacion_url(GrupoInvestigacion.last)
  end

  test "should show grupo_investigacion" do
    get grupo_investigacion_url(@grupo_investigacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_investigacion_url(@grupo_investigacion)
    assert_response :success
  end

  test "should update grupo_investigacion" do
    patch grupo_investigacion_url(@grupo_investigacion), params: { grupo_investigacion: { nombre: @grupo_investigacion.nombre } }
    assert_redirected_to grupo_investigacion_url(@grupo_investigacion)
  end

  test "should destroy grupo_investigacion" do
    assert_difference('GrupoInvestigacion.count', -1) do
      delete grupo_investigacion_url(@grupo_investigacion)
    end

    assert_redirected_to grupo_investigacions_url
  end
end
