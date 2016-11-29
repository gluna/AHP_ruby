require 'test_helper'

class JulgamentoCriteriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @julgamento_criterio = julgamento_criterios(:one)
  end

  test "should get index" do
    get julgamento_criterios_url
    assert_response :success
  end

  test "should get new" do
    get new_julgamento_criterio_url
    assert_response :success
  end

  test "should create julgamento_criterio" do
    assert_difference('JulgamentoCriterio.count') do
      post julgamento_criterios_url, params: { julgamento_criterio: { criterio_1_id: @julgamento_criterio.criterio_1_id, criterio_2_id: @julgamento_criterio.criterio_2_id, projeto_id: @julgamento_criterio.projeto_id, valor: @julgamento_criterio.valor } }
    end

    assert_redirected_to julgamento_criterio_url(JulgamentoCriterio.last)
  end

  test "should show julgamento_criterio" do
    get julgamento_criterio_url(@julgamento_criterio)
    assert_response :success
  end

  test "should get edit" do
    get edit_julgamento_criterio_url(@julgamento_criterio)
    assert_response :success
  end

  test "should update julgamento_criterio" do
    patch julgamento_criterio_url(@julgamento_criterio), params: { julgamento_criterio: { criterio_1_id: @julgamento_criterio.criterio_1_id, criterio_2_id: @julgamento_criterio.criterio_2_id, projeto_id: @julgamento_criterio.projeto_id, valor: @julgamento_criterio.valor } }
    assert_redirected_to julgamento_criterio_url(@julgamento_criterio)
  end

  test "should destroy julgamento_criterio" do
    assert_difference('JulgamentoCriterio.count', -1) do
      delete julgamento_criterio_url(@julgamento_criterio)
    end

    assert_redirected_to julgamento_criterios_url
  end
end
