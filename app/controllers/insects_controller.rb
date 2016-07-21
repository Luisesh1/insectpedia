class InsectsController < ApplicationController
  before_action :set_insect, only: [:show]

  # GET /insects
  # GET /insects.json
  def index
    if params[:gender].nil?
      @insects = Insect.all 
    else
      unless Gender.exists?(params[:gender])
        @insects = Gender.new.to_a
      else
        @insects = Gender.find(params[:gender]).insects
      end
      
    end
  end

  # GET /insects/1
  # GET /insects/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insect
      @insect = Insect.find(params[:id])
    end
end
