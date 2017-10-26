require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get nao_autorizado" do
    get home_nao_autorizado_url
    assert_response :success
  end

  test "should get comprovante" do
    get home_comprovante_url
    assert_response :success
  end

  test "should get salvar_inscricao" do
    get home_salvar_inscricao_url
    assert_response :success
  end

end
