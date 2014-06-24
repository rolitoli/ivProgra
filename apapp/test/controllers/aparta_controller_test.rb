require 'test_helper'

class ApartaControllerTest < ActionController::TestCase
  setup do
    @apartum = aparta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aparta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartum" do
    assert_difference('Apartum.count') do
      post :create, apartum: { contacto: @apartum.contacto, costo: @apartum.costo, descripcion: @apartum.descripcion, titulo: @apartum.titulo, ubicacion: @apartum.ubicacion }
    end

    assert_redirected_to apartum_path(assigns(:apartum))
  end

  test "should show apartum" do
    get :show, id: @apartum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartum
    assert_response :success
  end

  test "should update apartum" do
    patch :update, id: @apartum, apartum: { contacto: @apartum.contacto, costo: @apartum.costo, descripcion: @apartum.descripcion, titulo: @apartum.titulo, ubicacion: @apartum.ubicacion }
    assert_redirected_to apartum_path(assigns(:apartum))
  end

  test "should destroy apartum" do
    assert_difference('Apartum.count', -1) do
      delete :destroy, id: @apartum
    end

    assert_redirected_to aparta_path
  end
end
