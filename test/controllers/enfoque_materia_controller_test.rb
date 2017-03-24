require 'test_helper'

class EnfoqueMateriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfoque_materium = enfoque_materia(:one)
  end

  test "should get index" do
    get enfoque_materia_url
    assert_response :success
  end

  test "should get new" do
    get new_enfoque_materium_url
    assert_response :success
  end

  test "should create enfoque_materium" do
    assert_difference('EnfoqueMaterium.count') do
      post enfoque_materia_url, params: { enfoque_materium: { enfoque_id: @enfoque_materium.enfoque_id, materia_id: @enfoque_materium.materia_id } }
    end

    assert_redirected_to enfoque_materium_url(EnfoqueMaterium.last)
  end

  test "should show enfoque_materium" do
    get enfoque_materium_url(@enfoque_materium)
    assert_response :success
  end

  test "should get edit" do
    get edit_enfoque_materium_url(@enfoque_materium)
    assert_response :success
  end

  test "should update enfoque_materium" do
    patch enfoque_materium_url(@enfoque_materium), params: { enfoque_materium: { enfoque_id: @enfoque_materium.enfoque_id, materia_id: @enfoque_materium.materia_id } }
    assert_redirected_to enfoque_materium_url(@enfoque_materium)
  end

  test "should destroy enfoque_materium" do
    assert_difference('EnfoqueMaterium.count', -1) do
      delete enfoque_materium_url(@enfoque_materium)
    end

    assert_redirected_to enfoque_materia_url
  end
end
