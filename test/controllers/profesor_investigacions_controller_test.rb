require 'test_helper'

class ProfesorInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesor_investigacion = profesor_investigacions(:one)
  end

  test "should get index" do
    get profesor_investigacions_url
    assert_response :success
  end

  test "should get new" do
    get new_profesor_investigacion_url
    assert_response :success
  end

  test "should create profesor_investigacion" do
    assert_difference('ProfesorInvestigacion.count') do
      post profesor_investigacions_url, params: { profesor_investigacion: { grupo_investigacion_id: @profesor_investigacion.grupo_investigacion_id, profesor_id: @profesor_investigacion.profesor_id } }
    end

    assert_redirected_to profesor_investigacion_url(ProfesorInvestigacion.last)
  end

  test "should show profesor_investigacion" do
    get profesor_investigacion_url(@profesor_investigacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_profesor_investigacion_url(@profesor_investigacion)
    assert_response :success
  end

  test "should update profesor_investigacion" do
    patch profesor_investigacion_url(@profesor_investigacion), params: { profesor_investigacion: { grupo_investigacion_id: @profesor_investigacion.grupo_investigacion_id, profesor_id: @profesor_investigacion.profesor_id } }
    assert_redirected_to profesor_investigacion_url(@profesor_investigacion)
  end

  test "should destroy profesor_investigacion" do
    assert_difference('ProfesorInvestigacion.count', -1) do
      delete profesor_investigacion_url(@profesor_investigacion)
    end

    assert_redirected_to profesor_investigacions_url
  end
end
