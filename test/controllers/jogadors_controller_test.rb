require "test_helper"

class JogadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jogador = jogadors(:one)
  end

  test "should get index" do
    get jogadors_url
    assert_response :success
  end

  test "should get new" do
    get new_jogador_url
    assert_response :success
  end

  test "should create jogador" do
    assert_difference("Jogador.count") do
      post jogadors_url, params: { jogador: { idade: @jogador.idade, nacionalidade: @jogador.nacionalidade, nome: @jogador.nome, overall: @jogador.overall, posicao: @jogador.posicao, url_image: @jogador.url_image } }
    end

    assert_redirected_to jogador_url(Jogador.last)
  end

  test "should show jogador" do
    get jogador_url(@jogador)
    assert_response :success
  end

  test "should get edit" do
    get edit_jogador_url(@jogador)
    assert_response :success
  end

  test "should update jogador" do
    patch jogador_url(@jogador), params: { jogador: { idade: @jogador.idade, nacionalidade: @jogador.nacionalidade, nome: @jogador.nome, overall: @jogador.overall, posicao: @jogador.posicao, url_image: @jogador.url_image } }
    assert_redirected_to jogador_url(@jogador)
  end

  test "should destroy jogador" do
    assert_difference("Jogador.count", -1) do
      delete jogador_url(@jogador)
    end

    assert_redirected_to jogadors_url
  end
end
