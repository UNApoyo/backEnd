require 'test_helper'

class ProfesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesor = profesors(:one)
  end

  test "should get index" do
    get profesors_url
    assert_response :success
  end

  test "should get new" do
    get new_profesor_url
    assert_response :success
  end

  test "should create profesor" do
    assert_difference('Profesor.count') do
      post profesors_url, params: { profesor: { nombre: @profesor.nombre, oficina: @profesor.oficina } }
    end

    assert_redirected_to profesor_url(Profesor.last)
  end

  test "should show profesor" do
    get profesor_url(@profesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_profesor_url(@profesor)
    assert_response :success
  end

  test "should update profesor" do
    patch profesor_url(@profesor), params: { profesor: { nombre: @profesor.nombre, oficina: @profesor.oficina } }
    assert_redirected_to profesor_url(@profesor)
  end

  test "should destroy profesor" do
    assert_difference('Profesor.count', -1) do
      delete profesor_url(@profesor)
    end

    assert_redirected_to profesors_url
  end
end
