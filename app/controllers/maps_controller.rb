class MapsController < ApplicationController
  layout 'maps'
  def add
    
  end

  def show
    @insects=Insect.find(params[:insecto_id]) unless params[:insecto_id].nil? or  params[:insecto_id]=="" 
    @insects=Gender.find(params[:genero_id]).insects unless params[:genero_id].nil? or  params[:genero_id]=="" 
    
  end
end
