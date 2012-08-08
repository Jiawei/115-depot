require 'test_helper'

class CategoryNodesControllerTest < ActionController::TestCase
  setup do
    @category_node = category_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_node" do
    assert_difference('CategoryNode.count') do
      post :create, :category_node => @category_node.attributes
    end

    assert_redirected_to category_node_path(assigns(:category_node))
  end

  test "should show category_node" do
    get :show, :id => @category_node.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @category_node.to_param
    assert_response :success
  end

  test "should update category_node" do
    put :update, :id => @category_node.to_param, :category_node => @category_node.attributes
    assert_redirected_to category_node_path(assigns(:category_node))
  end

  test "should destroy category_node" do
    assert_difference('CategoryNode.count', -1) do
      delete :destroy, :id => @category_node.to_param
    end

    assert_redirected_to category_nodes_path
  end
end
