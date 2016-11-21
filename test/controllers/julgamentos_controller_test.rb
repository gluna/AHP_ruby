require 'test_helper'

class JulgamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @julgamento = julgamentos(:one)
  end

  test "should get index" do
    get julgamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_julgamento_url
    assert_response :success
  end

  test "should create julgamento" do
    assert_difference('Julgamento.count') do
      post julgamentos_url, params: { julgamento: { alternativa_id: @julgamento.alternativa_id, alternativa_id: @julgamento.alternativa_id, criterio: @julgamento.criterio, projeto_id: @julgamento.projeto_id, usuario_id: @julgamento.usuario_id, valor: @julgamento.valor } }
    end

    assert_redirected_to julgamento_url(Julgamento.last)
  end

  test "should show julgamento" do
    get julgamento_url(@julgamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_julgamento_url(@julgamento)
    assert_response :success
  end

  test "should update julgamento" do
    patch julgamento_url(@julgamento), params: { julgamento: { alternativa_id: @julgamento.alternativa_id, alternativa_id: @julgamento.alternativa_id, criterio: @julgamento.criterio, projeto_id: @julgamento.projeto_id, usuario_id: @julgamento.usuario_id, valor: @julgamento.valor } }
    assert_redirected_to julgamento_url(@julgamento)
  end

  test "should destroy julgamento" do
    assert_difference('Julgamento.count', -1) do
      delete julgamento_url(@julgamento)
    end

    assert_redirected_to julgamentos_url
  end
end
