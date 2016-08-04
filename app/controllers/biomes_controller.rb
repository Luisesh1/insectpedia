class BiomesController < ApplicationController
  before_action :set_biome, only: [:show, :edit, :update, :destroy]

  # GET /biomes
  # GET /biomes.json
  def index
    @biomes = Biome.all
  end

  # GET /biomes/1
  # GET /biomes/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biome
      @biome = Biome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biome_params
      params.fetch(:biome, {})
    end
end
