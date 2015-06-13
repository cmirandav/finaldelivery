require 'test_helper'

class DetpedidosControllerTest < ActionController::TestCase
  setup do
    @detpedido = detpedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detpedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detpedido" do
    assert_difference('Detpedido.count') do
      post :create, detpedido: { canped: @detpedido.canped }
    end

    assert_redirected_to detpedido_path(assigns(:detpedido))
  end

  test "should show detpedido" do
    get :show, id: @detpedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detpedido
    assert_response :success
  end

  test "should update detpedido" do
    patch :update, id: @detpedido, detpedido: { canped: @detpedido.canped }
    assert_redirected_to detpedido_path(assigns(:detpedido))
  end

  test "should destroy detpedido" do
    assert_difference('Detpedido.count', -1) do
      delete :destroy, id: @detpedido
    end

    assert_redirected_to detpedidos_path
  end
end
