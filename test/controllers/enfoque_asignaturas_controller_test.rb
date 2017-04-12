require 'test_helper'

class EnfoqueAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfoque_asignatura = enfoque_asignaturas(:one)
  end

  test "should get index" do
    get enfoque_asignaturas_url, as: :json
    assert_response :success
  end

  test "should create enfoque_asignatura" do
    assert_difference('EnfoqueAsignatura.count') do
      post enfoque_asignaturas_url, params: { enfoque_asignatura: { enfoque_id: @enfoque_asignatura.enfoque_id, asignatura_id: @enfoque_asignatura.asignatura_id } }, as: :json
    end

    assert_response 201
  end

  test "should show enfoque_asignatura" do
    get enfoque_asignatura_url(@enfoque_asignatura), as: :json
    assert_response :success
  end

  test "should update enfoque_asignatura" do
    patch enfoque_asignatura_url(@enfoque_asignatura), params: { enfoque_asignatura: { enfoque_id: @enfoque_asignatura.enfoque_id, asignatura_id: @enfoque_asignatura.asignatura_id } }, as: :json
    assert_response 200
  end

  test "should destroy enfoque_asignatura" do
    assert_difference('EnfoqueAsignatura.count', -1) do
      delete enfoque_asignatura_url(@enfoque_asignatura), as: :json
    end

    assert_response 204
  end
end
