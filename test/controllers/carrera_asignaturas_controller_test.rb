require 'test_helper'

class CarreraAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrera_asignatura = carrera_asignaturas(:one)
  end

  test "should get index" do
    get carrera_asignaturas_url, as: :json
    assert_response :success
  end

  test "should create carrera_asignatura" do
    assert_difference('CarreraAsignatura.count') do
      post carrera_asignaturas_url, params: { carrera_asignatura: { asignatura_id: @carrera_asignatura.asignatura_id, carrera_id: @carrera_asignatura.carrera_id } }, as: :json
    end

    assert_response 201
  end

  test "should show carrera_asignatura" do
    get carrera_asignatura_url(@carrera_asignatura), as: :json
    assert_response :success
  end

  test "should update carrera_asignatura" do
    patch carrera_asignatura_url(@carrera_asignatura), params: { carrera_asignatura: { asignatura_id: @carrera_asignatura.asignatura_id, carrera_id: @carrera_asignatura.carrera_id } }, as: :json
    assert_response 200
  end

  test "should destroy carrera_asignatura" do
    assert_difference('CarreraAsignatura.count', -1) do
      delete carrera_asignatura_url(@carrera_asignatura), as: :json
    end

    assert_response 204
  end
end
