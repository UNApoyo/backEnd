require 'test_helper'

class CarreraMateriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrera_materium = carrera_materia(:one)
  end

  test "should get index" do
    get carrera_materia_url
    assert_response :success
  end

  test "should get new" do
    get new_carrera_materium_url
    assert_response :success
  end

  test "should create carrera_materium" do
    assert_difference('CarreraMaterium.count') do
      post carrera_materia_url, params: { carrera_materium: { carrera_id: @carrera_materium.carrera_id, materia_id: @carrera_materium.materia_id } }
    end

    assert_redirected_to carrera_materium_url(CarreraMaterium.last)
  end

  test "should show carrera_materium" do
    get carrera_materium_url(@carrera_materium)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrera_materium_url(@carrera_materium)
    assert_response :success
  end

  test "should update carrera_materium" do
    patch carrera_materium_url(@carrera_materium), params: { carrera_materium: { carrera_id: @carrera_materium.carrera_id, materia_id: @carrera_materium.materia_id } }
    assert_redirected_to carrera_materium_url(@carrera_materium)
  end

  test "should destroy carrera_materium" do
    assert_difference('CarreraMaterium.count', -1) do
      delete carrera_materium_url(@carrera_materium)
    end

    assert_redirected_to carrera_materia_url
  end
end
