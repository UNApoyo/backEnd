require 'test_helper'

class AsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignatura = asignaturas(:one)
  end

  test "should get index" do
    get asignaturas_url, as: :json
    assert_response :success
  end

  test "should create asignatura" do
    assert_difference('Asignatura.count') do
      post asignaturas_url, params: { asignatura: { codigo: @asignatura.codigo, creditos: @asignatura.creditos, nombre: @asignatura.nombre, prerequisito_id: @asignatura.prerequisito_id, tipologia: @asignatura.tipologia } }, as: :json
    end

    assert_response 201
  end

  test "should show asignatura" do
    get asignatura_url(@asignatura), as: :json
    assert_response :success
  end

  test "should update asignatura" do
    patch asignatura_url(@asignatura), params: { asignatura: { codigo: @asignatura.codigo, creditos: @asignatura.creditos, nombre: @asignatura.nombre, prerequisito_id: @asignatura.prerequisito_id, tipologia: @asignatura.tipologia } }, as: :json
    assert_response 200
  end

  test "should destroy asignatura" do
    assert_difference('Asignatura.count', -1) do
      delete asignatura_url(@asignatura), as: :json
    end

    assert_response 204
  end
end
