require 'test_helper'

class GrupoCriteriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_criterio = grupo_criterios(:one)
  end

  test "should get index" do
    get grupo_criterios_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_criterio_url
    assert_response :success
  end

  test "should create grupo_criterio" do
    assert_difference('GrupoCriterio.count') do
      post grupo_criterios_url, params: { grupo_criterio: { nome: @grupo_criterio.nome, peso: @grupo_criterio.peso } }
    end

    assert_redirected_to grupo_criterio_url(GrupoCriterio.last)
  end

  test "should show grupo_criterio" do
    get grupo_criterio_url(@grupo_criterio)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_criterio_url(@grupo_criterio)
    assert_response :success
  end

  test "should update grupo_criterio" do
    patch grupo_criterio_url(@grupo_criterio), params: { grupo_criterio: { nome: @grupo_criterio.nome, peso: @grupo_criterio.peso } }
    assert_redirected_to grupo_criterio_url(@grupo_criterio)
  end

  test "should destroy grupo_criterio" do
    assert_difference('GrupoCriterio.count', -1) do
      delete grupo_criterio_url(@grupo_criterio)
    end

    assert_redirected_to grupo_criterios_url
  end
end
