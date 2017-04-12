require 'test_helper'

class TrabajoGradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajo_grado = trabajo_grados(:one)
  end

  test "should get index" do
    get trabajo_grados_url, as: :json
    assert_response :success
  end

  test "should create trabajo_grado" do
    assert_difference('TrabajoGrado.count') do
      post trabajo_grados_url, params: { trabajo_grado: { carrera_id: @trabajo_grado.carrera_id, nombre: @trabajo_grado.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show trabajo_grado" do
    get trabajo_grado_url(@trabajo_grado), as: :json
    assert_response :success
  end

  test "should update trabajo_grado" do
    patch trabajo_grado_url(@trabajo_grado), params: { carrera_id: @trabajo_grado.carrera_id, trabajo_grado: { nombre: @trabajo_grado.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy trabajo_grado" do
    assert_difference('TrabajoGrado.count', -1) do
      delete trabajo_grado_url(@trabajo_grado), as: :json
    end

    assert_response 204
  end
end
