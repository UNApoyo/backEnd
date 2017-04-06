require 'test_helper'

class EnfoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfoque = enfoques(:one)
  end

  test "should get index" do
    get enfoques_url, as: :json
    assert_response :success
  end

  test "should create enfoque" do
    assert_difference('Enfoque.count') do
      post enfoques_url, params: { enfoque: { nombre: @enfoque.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show enfoque" do
    get enfoque_url(@enfoque), as: :json
    assert_response :success
  end

  test "should update enfoque" do
    patch enfoque_url(@enfoque), params: { enfoque: { nombre: @enfoque.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy enfoque" do
    assert_difference('Enfoque.count', -1) do
      delete enfoque_url(@enfoque), as: :json
    end

    assert_response 204
  end
end
