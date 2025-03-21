class PokemonesController < ApplicationController
  before_action :set_pokemon, only: %i[ show edit update destroy ]

  # GET /pokemones or /pokemones.json
  def index
    @pokemones = Pokemon.all
  end

  # GET /pokemones/1 or /pokemones/1.json
  def show
  end

  # GET /pokemones/new
  def new
    @pokemon = Pokemon.new
  end

  # GET /pokemones/1/edit
  def edit
  end

  # POST /pokemones or /pokemones.json
  def create
    @pokemon = Pokemon.new(pokemon_params)

    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to @pokemon, notice: "Pokemon was successfully created." }
        format.json { render :show, status: :created, location: @pokemon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemones/1 or /pokemones/1.json
  def update
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html { redirect_to @pokemon, notice: "Pokemon was successfully updated." }
        format.json { render :show, status: :ok, location: @pokemon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemones/1 or /pokemones/1.json
  def destroy
    @pokemon.destroy!

    respond_to do |format|
      format.html { redirect_to pokemones_path, status: :see_other, notice: "Pokemon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pokemon_params
      params.expect(pokemon: [ :nombre, :categoria, :habilidad, :tipo, :debilidad ])
    end
end
