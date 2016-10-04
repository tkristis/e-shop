require 'test_helper'

class ObjectNamesControllerTest < ActionController::TestCase
  setup do
    @object_name = object_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:object_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create object_name" do
    assert_difference('ObjectName.count') do
      post :create, object_name: {  }
    end

    assert_redirected_to object_name_path(assigns(:object_name))
  end

  test "should show object_name" do
    get :show, id: @object_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @object_name
    assert_response :success
  end

  test "should update object_name" do
    patch :update, id: @object_name, object_name: {  }
    assert_redirected_to object_name_path(assigns(:object_name))
  end

  test "should destroy object_name" do
    assert_difference('ObjectName.count', -1) do
      delete :destroy, id: @object_name
    end

    assert_redirected_to object_names_path
  end
end
