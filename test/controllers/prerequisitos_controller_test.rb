require 'test_helper'

class PrerequisitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prerequisito = prerequisitos(:one)
  end

  test "should get index" do
    get prerequisitos_url, as: :json
    assert_response :success
  end

  test "should create prerequisito" do
    assert_difference('Prerequisito.count') do
      post prerequisitos_url, params: { prerequisito: { requisito: @prerequisito.requisito } }, as: :json
    end

    assert_response 201
  end

  test "should show prerequisito" do
    get prerequisito_url(@prerequisito), as: :json
    assert_response :success
  end

  test "should update prerequisito" do
    patch prerequisito_url(@prerequisito), params: { prerequisito: { requisito: @prerequisito.requisito } }, as: :json
    assert_response 200
  end

  test "should destroy prerequisito" do
    assert_difference('Prerequisito.count', -1) do
      delete prerequisito_url(@prerequisito), as: :json
    end

    assert_response 204
  end
end
