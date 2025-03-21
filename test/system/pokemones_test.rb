require "application_system_test_case"

class PokemonesTest < ApplicationSystemTestCase
  setup do
    @pokemon = pokemones(:one)
  end

  test "visiting the index" do
    visit pokemones_url
    assert_selector "h1", text: "Pokemones"
  end

  test "should create pokemon" do
    visit pokemones_url
    click_on "New pokemon"

    fill_in "Categoria", with: @pokemon.categoria
    fill_in "Debilidad", with: @pokemon.debilidad
    fill_in "Habilidad", with: @pokemon.habilidad
    fill_in "Nombre", with: @pokemon.nombre
    fill_in "Tipo", with: @pokemon.tipo
    click_on "Create Pokemon"

    assert_text "Pokemon was successfully created"
    click_on "Back"
  end

  test "should update Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Edit this pokemon", match: :first

    fill_in "Categoria", with: @pokemon.categoria
    fill_in "Debilidad", with: @pokemon.debilidad
    fill_in "Habilidad", with: @pokemon.habilidad
    fill_in "Nombre", with: @pokemon.nombre
    fill_in "Tipo", with: @pokemon.tipo
    click_on "Update Pokemon"

    assert_text "Pokemon was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Destroy this pokemon", match: :first

    assert_text "Pokemon was successfully destroyed"
  end
end
