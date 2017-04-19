require 'test_helper'

class ProfesorInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesor_investigacion = profesor_investigacions(:one)
  end

  test "should get index" do
    get profesor_investigacions_url, as: :json
    assert_response :success
  end

  test "should create profesor_investigacion" do
    assert_difference('ProfesorInvestigacion.count') do
      post profesor_investigacions_url, params: { profesor_investigacion: { grupo_investigacion_id: @profesor_investigacion.grupo_investigacion_id, profesor_id: @profesor_investigacion.profesor_id } }, as: :json
    end

    assert_response 201
  end

  test "should show profesor_investigacion" do
    get profesor_investigacion_url(@profesor_investigacion), as: :json
    assert_response :success
  end

  test "should update profesor_investigacion" do
    patch profesor_investigacion_url(@profesor_investigacion), params: { profesor_investigacion: { grupo_investigacion_id: @profesor_investigacion.grupo_investigacion_id, profesor_id: @profesor_investigacion.profesor_id } }, as: :json
    assert_response 200
  end

  test "should destroy profesor_investigacion" do
    assert_difference('ProfesorInvestigacion.count', -1) do
      delete profesor_investigacion_url(@profesor_investigacion), as: :json
    end

    assert_response 204
  end
end
