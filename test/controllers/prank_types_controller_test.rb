require 'test_helper'

class PrankTypesControllerTest < ActionController::TestCase
  setup do
    @prank_type = prank_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prank_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prank_type" do
    assert_difference('PrankType.count') do
      post :create, prank_type: {  }
    end

    assert_redirected_to prank_type_path(assigns(:prank_type))
  end

  test "should show prank_type" do
    get :show, id: @prank_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prank_type
    assert_response :success
  end

  test "should update prank_type" do
    patch :update, id: @prank_type, prank_type: {  }
    assert_redirected_to prank_type_path(assigns(:prank_type))
  end

  test "should destroy prank_type" do
    assert_difference('PrankType.count', -1) do
      delete :destroy, id: @prank_type
    end

    assert_redirected_to prank_types_path
  end
end
