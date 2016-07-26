class MapsController < ApplicationController
  layout 'maps'
  def add
    
  end

  def show
    @insects=Insect.find(params[:insecto_id]) unless params[:insecto_id].nil? or  params[:insecto_id]=="" 
    @insects=Insect.joins(:gender=>[:family=>:order]).where("orders.id= ? ",params[:orden_id]) unless params[:orden_id].nil? or  params[:orden_id]=="" 
    @insects=Insect.joins(:gender=>:family).where("families.id= ? ",params[:familia_id]) unless params[:familia_id].nil? or  params[:familia_id]=="" 
    @insects=Gender.find(params[:genero_id]).insects unless params[:genero_id].nil? or  params[:genero_id]=="" 
    
  end
end
