require 'test_helper'

class DirectoriesControllerTest < ActionController::TestCase
  setup do
    @directory = directories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directory" do
    assert_difference('Directory.count') do
      post :create, directory: { category_id: @directory.category_id, celular: @directory.celular, ciudad: @directory.ciudad, codigo_area: @directory.codigo_area, comuna: @directory.comuna, descripcion: @directory.descripcion, direccion: @directory.direccion, email: @directory.email, estado: @directory.estado, foto_perfil: @directory.foto_perfil, foto_portada: @directory.foto_portada, layout: @directory.layout, nombre: @directory.nombre, region: @directory.region, telefono: @directory.telefono, user_id: @directory.user_id }
    end

    assert_redirected_to directory_path(assigns(:directory))
  end

  test "should show directory" do
    get :show, id: @directory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directory
    assert_response :success
  end

  test "should update directory" do
    patch :update, id: @directory, directory: { category_id: @directory.category_id, celular: @directory.celular, ciudad: @directory.ciudad, codigo_area: @directory.codigo_area, comuna: @directory.comuna, descripcion: @directory.descripcion, direccion: @directory.direccion, email: @directory.email, estado: @directory.estado, foto_perfil: @directory.foto_perfil, foto_portada: @directory.foto_portada, layout: @directory.layout, nombre: @directory.nombre, region: @directory.region, telefono: @directory.telefono, user_id: @directory.user_id }
    assert_redirected_to directory_path(assigns(:directory))
  end

  test "should destroy directory" do
    assert_difference('Directory.count', -1) do
      delete :destroy, id: @directory
    end

    assert_redirected_to directories_path
  end
end
