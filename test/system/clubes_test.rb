require "application_system_test_case"

class ClubesTest < ApplicationSystemTestCase
  setup do
    @clube = clubes(:one)
  end

  test "visiting the index" do
    visit clubes_url
    assert_selector "h1", text: "Clubes"
  end

  test "should create clube" do
    visit clubes_url
    click_on "New clube"

    fill_in "Nome", with: @clube.Nome
    fill_in "Pais", with: @clube.Pais
    fill_in "Sigla", with: @clube.Sigla
    fill_in "Nivel", with: @clube.nivel
    fill_in "Url image", with: @clube.url_image
    click_on "Create Clube"

    assert_text "Clube was successfully created"
    click_on "Back"
  end

  test "should update Clube" do
    visit clube_url(@clube)
    click_on "Edit this clube", match: :first

    fill_in "Nome", with: @clube.Nome
    fill_in "Pais", with: @clube.Pais
    fill_in "Sigla", with: @clube.Sigla
    fill_in "Nivel", with: @clube.nivel
    fill_in "Url image", with: @clube.url_image
    click_on "Update Clube"

    assert_text "Clube was successfully updated"
    click_on "Back"
  end

  test "should destroy Clube" do
    visit clube_url(@clube)
    click_on "Destroy this clube", match: :first

    assert_text "Clube was successfully destroyed"
  end
end
