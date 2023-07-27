require "application_system_test_case"

class JogadorsTest < ApplicationSystemTestCase
  setup do
    @jogador = jogadors(:one)
  end

  test "visiting the index" do
    visit jogadors_url
    assert_selector "h1", text: "Jogadors"
  end

  test "should create jogador" do
    visit jogadors_url
    click_on "New jogador"

    fill_in "Idade", with: @jogador.idade
    fill_in "Nacionalidade", with: @jogador.nacionalidade
    fill_in "Nome", with: @jogador.nome
    fill_in "Overall", with: @jogador.overall
    fill_in "Posicao", with: @jogador.posicao
    fill_in "Url image", with: @jogador.url_image
    click_on "Create Jogador"

    assert_text "Jogador was successfully created"
    click_on "Back"
  end

  test "should update Jogador" do
    visit jogador_url(@jogador)
    click_on "Edit this jogador", match: :first

    fill_in "Idade", with: @jogador.idade
    fill_in "Nacionalidade", with: @jogador.nacionalidade
    fill_in "Nome", with: @jogador.nome
    fill_in "Overall", with: @jogador.overall
    fill_in "Posicao", with: @jogador.posicao
    fill_in "Url image", with: @jogador.url_image
    click_on "Update Jogador"

    assert_text "Jogador was successfully updated"
    click_on "Back"
  end

  test "should destroy Jogador" do
    visit jogador_url(@jogador)
    click_on "Destroy this jogador", match: :first

    assert_text "Jogador was successfully destroyed"
  end
end
