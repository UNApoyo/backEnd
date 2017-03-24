require 'test_helper'

class MateriaInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materia_investigacion = materia_investigacions(:one)
  end

  test "should get index" do
    get materia_investigacions_url
    assert_response :success
  end

  test "should get new" do
    get new_materia_investigacion_url
    assert_response :success
  end

  test "should create materia_investigacion" do
    assert_difference('MateriaInvestigacion.count') do
      post materia_investigacions_url, params: { materia_investigacion: { grupo_investigacion_id: @materia_investigacion.grupo_investigacion_id, materia_id: @materia_investigacion.materia_id } }
    end

    assert_redirected_to materia_investigacion_url(MateriaInvestigacion.last)
  end

  test "should show materia_investigacion" do
    get materia_investigacion_url(@materia_investigacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_materia_investigacion_url(@materia_investigacion)
    assert_response :success
  end

  test "should update materia_investigacion" do
    patch materia_investigacion_url(@materia_investigacion), params: { materia_investigacion: { grupo_investigacion_id: @materia_investigacion.grupo_investigacion_id, materia_id: @materia_investigacion.materia_id } }
    assert_redirected_to materia_investigacion_url(@materia_investigacion)
  end

  test "should destroy materia_investigacion" do
    assert_difference('MateriaInvestigacion.count', -1) do
      delete materia_investigacion_url(@materia_investigacion)
    end

    assert_redirected_to materia_investigacions_url
  end
end
