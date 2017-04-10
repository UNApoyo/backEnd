require 'test_helper'

class RequisitoAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requisito_asignatura = requisito_asignaturas(:one)
  end

  test "should get index" do
    get requisito_asignaturas_url, as: :json
    assert_response :success
  end

  test "should create requisito_asignatura" do
    assert_difference('RequisitoAsignatura.count') do
      post requisito_asignaturas_url, params: { requisito_asignatura: { asignatura_id: @requisito_asignatura.asignatura_id, prerequisito_id: @requisito_asignatura.prerequisito_id } }, as: :json
    end

    assert_response 201
  end

  test "should show requisito_asignatura" do
    get requisito_asignatura_url(@requisito_asignatura), as: :json
    assert_response :success
  end

  test "should update requisito_asignatura" do
    patch requisito_asignatura_url(@requisito_asignatura), params: { requisito_asignatura: { asignatura_id: @requisito_asignatura.asignatura_id, prerequisito_id: @requisito_asignatura.prerequisito_id } }, as: :json
    assert_response 200
  end

  test "should destroy requisito_asignatura" do
    assert_difference('RequisitoAsignatura.count', -1) do
      delete requisito_asignatura_url(@requisito_asignatura), as: :json
    end

    assert_response 204
  end
end
