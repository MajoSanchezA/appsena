require "test_helper"

class PokemonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon = pokemones(:one)
  end

  test "should get index" do
    get pokemones_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_url
    assert_response :success
  end

  test "should create pokemon" do
    assert_difference("Pokemon.count") do
      post pokemones_url, params: { pokemon: { categoria: @pokemon.categoria, debilidad: @pokemon.debilidad, habilidad: @pokemon.habilidad, nombre: @pokemon.nombre, tipo: @pokemon.tipo } }
    end

    assert_redirected_to pokemon_url(Pokemon.last)
  end

  test "should show pokemon" do
    get pokemon_url(@pokemon)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_url(@pokemon)
    assert_response :success
  end

  test "should update pokemon" do
    patch pokemon_url(@pokemon), params: { pokemon: { categoria: @pokemon.categoria, debilidad: @pokemon.debilidad, habilidad: @pokemon.habilidad, nombre: @pokemon.nombre, tipo: @pokemon.tipo } }
    assert_redirected_to pokemon_url(@pokemon)
  end

  test "should destroy pokemon" do
    assert_difference("Pokemon.count", -1) do
      delete pokemon_url(@pokemon)
    end

    assert_redirected_to pokemones_url
  end
end
