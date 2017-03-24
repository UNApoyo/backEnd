require 'test_helper'

class CarrerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrera = carreras(:one)
  end

  test "should get index" do
    get carreras_url
    assert_response :success
  end

  test "should get new" do
    get new_carrera_url
    assert_response :success
  end

  test "should create carrera" do
    assert_difference('Carrera.count') do
      post carreras_url, params: { carrera: { creditos: @carrera.creditos, nombre: @carrera.nombre } }
    end

    assert_redirected_to carrera_url(Carrera.last)
  end

  test "should show carrera" do
    get carrera_url(@carrera)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrera_url(@carrera)
    assert_response :success
  end

  test "should update carrera" do
    patch carrera_url(@carrera), params: { carrera: { creditos: @carrera.creditos, nombre: @carrera.nombre } }
    assert_redirected_to carrera_url(@carrera)
  end

  test "should destroy carrera" do
    assert_difference('Carrera.count', -1) do
      delete carrera_url(@carrera)
    end

    assert_redirected_to carreras_url
  end
end
