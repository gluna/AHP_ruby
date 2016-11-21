require 'test_helper'

class GrupoUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_usuario = grupo_usuarios(:one)
  end

  test "should get index" do
    get grupo_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_usuario_url
    assert_response :success
  end

  test "should create grupo_usuario" do
    assert_difference('GrupoUsuario.count') do
      post grupo_usuarios_url, params: { grupo_usuario: { grupo_avaliacao_id: @grupo_usuario.grupo_avaliacao_id, usuario_id: @grupo_usuario.usuario_id } }
    end

    assert_redirected_to grupo_usuario_url(GrupoUsuario.last)
  end

  test "should show grupo_usuario" do
    get grupo_usuario_url(@grupo_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_usuario_url(@grupo_usuario)
    assert_response :success
  end

  test "should update grupo_usuario" do
    patch grupo_usuario_url(@grupo_usuario), params: { grupo_usuario: { grupo_avaliacao_id: @grupo_usuario.grupo_avaliacao_id, usuario_id: @grupo_usuario.usuario_id } }
    assert_redirected_to grupo_usuario_url(@grupo_usuario)
  end

  test "should destroy grupo_usuario" do
    assert_difference('GrupoUsuario.count', -1) do
      delete grupo_usuario_url(@grupo_usuario)
    end

    assert_redirected_to grupo_usuarios_url
  end
end
