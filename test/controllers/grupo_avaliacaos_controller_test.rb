require 'test_helper'

class GrupoAvaliacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_avaliacao = grupo_avaliacaos(:one)
  end

  test "should get index" do
    get grupo_avaliacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_avaliacao_url
    assert_response :success
  end

  test "should create grupo_avaliacao" do
    assert_difference('GrupoAvaliacao.count') do
      post grupo_avaliacaos_url, params: { grupo_avaliacao: { ativo: @grupo_avaliacao.ativo, nome: @grupo_avaliacao.nome, peso: @grupo_avaliacao.peso, projeto_id: @grupo_avaliacao.projeto_id } }
    end

    assert_redirected_to grupo_avaliacao_url(GrupoAvaliacao.last)
  end

  test "should show grupo_avaliacao" do
    get grupo_avaliacao_url(@grupo_avaliacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_avaliacao_url(@grupo_avaliacao)
    assert_response :success
  end

  test "should update grupo_avaliacao" do
    patch grupo_avaliacao_url(@grupo_avaliacao), params: { grupo_avaliacao: { ativo: @grupo_avaliacao.ativo, nome: @grupo_avaliacao.nome, peso: @grupo_avaliacao.peso, projeto_id: @grupo_avaliacao.projeto_id } }
    assert_redirected_to grupo_avaliacao_url(@grupo_avaliacao)
  end

  test "should destroy grupo_avaliacao" do
    assert_difference('GrupoAvaliacao.count', -1) do
      delete grupo_avaliacao_url(@grupo_avaliacao)
    end

    assert_redirected_to grupo_avaliacaos_url
  end
end
