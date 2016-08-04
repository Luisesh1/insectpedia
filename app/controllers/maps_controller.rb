class MapsController < ApplicationController
  layout 'maps'
  def add
    
  end

  def show
    @insects= Insect.joins(:gender=>[:family=>:order])
    @insects= @insects.where("orders.id=?",params[:orden_id]) unless params[:orden_id].nil? or params[:orden_id]==""
    @insects= @insects.where("families.id=?",params[:familia_id]) unless params[:familia_id].nil? or params[:familia_id]==""
    @insects= @insects.where("genders.id=?",params[:genero_id]) unless params[:genero_id].nil? or params[:genero_id]==""
    @insects= @insects.joins(:biomes).where("biomes.id=?",params[:bioma_id]) unless params[:bioma_id].nil? or params[:bioma_id]==""
    @insects= @insects.where("insects.id=?",params[:insecto_id]) unless params[:insecto_id].nil? or params[:insecto_id]==""  
  end
end
