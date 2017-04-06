require 'test_helper'

class AreaInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @area_investigacion = area_investigacions(:one)
  end

  test "should get index" do
    get area_investigacions_url, as: :json
    assert_response :success
  end

  test "should create area_investigacion" do
    assert_difference('AreaInvestigacion.count') do
      post area_investigacions_url, params: { area_investigacion: { area_id: @area_investigacion.area_id, grupo_investigacion_id: @area_investigacion.grupo_investigacion_id } }, as: :json
    end

    assert_response 201
  end

  test "should show area_investigacion" do
    get area_investigacion_url(@area_investigacion), as: :json
    assert_response :success
  end

  test "should update area_investigacion" do
    patch area_investigacion_url(@area_investigacion), params: { area_investigacion: { area_id: @area_investigacion.area_id, grupo_investigacion_id: @area_investigacion.grupo_investigacion_id } }, as: :json
    assert_response 200
  end

  test "should destroy area_investigacion" do
    assert_difference('AreaInvestigacion.count', -1) do
      delete area_investigacion_url(@area_investigacion), as: :json
    end

    assert_response 204
  end
end
