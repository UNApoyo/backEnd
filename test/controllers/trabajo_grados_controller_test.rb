require 'test_helper'

class TrabajoGradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajo_grado = trabajo_grados(:one)
  end

  test "should get index" do
    get trabajo_grados_url
    assert_response :success
  end

  test "should get new" do
    get new_trabajo_grado_url
    assert_response :success
  end

  test "should create trabajo_grado" do
    assert_difference('TrabajoGrado.count') do
      post trabajo_grados_url, params: { trabajo_grado: { nombre: @trabajo_grado.nombre } }
    end

    assert_redirected_to trabajo_grado_url(TrabajoGrado.last)
  end

  test "should show trabajo_grado" do
    get trabajo_grado_url(@trabajo_grado)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabajo_grado_url(@trabajo_grado)
    assert_response :success
  end

  test "should update trabajo_grado" do
    patch trabajo_grado_url(@trabajo_grado), params: { trabajo_grado: { nombre: @trabajo_grado.nombre } }
    assert_redirected_to trabajo_grado_url(@trabajo_grado)
  end

  test "should destroy trabajo_grado" do
    assert_difference('TrabajoGrado.count', -1) do
      delete trabajo_grado_url(@trabajo_grado)
    end

    assert_redirected_to trabajo_grados_url
  end
end
