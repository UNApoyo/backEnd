require 'test_helper'

class ProfesorGradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesor_grado = profesor_grados(:one)
  end

  test "should get index" do
    get profesor_grados_url
    assert_response :success
  end

  test "should get new" do
    get new_profesor_grado_url
    assert_response :success
  end

  test "should create profesor_grado" do
    assert_difference('ProfesorGrado.count') do
      post profesor_grados_url, params: { profesor_grado: { profesor_id: @profesor_grado.profesor_id, trabajo_grado_id: @profesor_grado.trabajo_grado_id } }
    end

    assert_redirected_to profesor_grado_url(ProfesorGrado.last)
  end

  test "should show profesor_grado" do
    get profesor_grado_url(@profesor_grado)
    assert_response :success
  end

  test "should get edit" do
    get edit_profesor_grado_url(@profesor_grado)
    assert_response :success
  end

  test "should update profesor_grado" do
    patch profesor_grado_url(@profesor_grado), params: { profesor_grado: { profesor_id: @profesor_grado.profesor_id, trabajo_grado_id: @profesor_grado.trabajo_grado_id } }
    assert_redirected_to profesor_grado_url(@profesor_grado)
  end

  test "should destroy profesor_grado" do
    assert_difference('ProfesorGrado.count', -1) do
      delete profesor_grado_url(@profesor_grado)
    end

    assert_redirected_to profesor_grados_url
  end
end
