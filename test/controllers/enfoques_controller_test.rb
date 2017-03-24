require 'test_helper'

class EnfoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfoque = enfoques(:one)
  end

  test "should get index" do
    get enfoques_url
    assert_response :success
  end

  test "should get new" do
    get new_enfoque_url
    assert_response :success
  end

  test "should create enfoque" do
    assert_difference('Enfoque.count') do
      post enfoques_url, params: { enfoque: { nombre: @enfoque.nombre } }
    end

    assert_redirected_to enfoque_url(Enfoque.last)
  end

  test "should show enfoque" do
    get enfoque_url(@enfoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_enfoque_url(@enfoque)
    assert_response :success
  end

  test "should update enfoque" do
    patch enfoque_url(@enfoque), params: { enfoque: { nombre: @enfoque.nombre } }
    assert_redirected_to enfoque_url(@enfoque)
  end

  test "should destroy enfoque" do
    assert_difference('Enfoque.count', -1) do
      delete enfoque_url(@enfoque)
    end

    assert_redirected_to enfoques_url
  end
end
