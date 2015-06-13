require 'test_helper'

class HoraentregasControllerTest < ActionController::TestCase
  setup do
    @horaentrega = horaentregas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horaentregas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horaentrega" do
    assert_difference('Horaentrega.count') do
      post :create, horaentrega: { deshora: @horaentrega.deshora }
    end

    assert_redirected_to horaentrega_path(assigns(:horaentrega))
  end

  test "should show horaentrega" do
    get :show, id: @horaentrega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horaentrega
    assert_response :success
  end

  test "should update horaentrega" do
    patch :update, id: @horaentrega, horaentrega: { deshora: @horaentrega.deshora }
    assert_redirected_to horaentrega_path(assigns(:horaentrega))
  end

  test "should destroy horaentrega" do
    assert_difference('Horaentrega.count', -1) do
      delete :destroy, id: @horaentrega
    end

    assert_redirected_to horaentregas_path
  end
end
