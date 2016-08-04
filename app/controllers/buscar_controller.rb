class BuscarController < ApplicationController
  def partes
    @partes= Image.joins(:part,:insect=>[:gender=>[:family=>:order]]) 
    @partes= @partes.where("parts.id=?",params[:parte_id]) unless params[:parte_id].nil? or params[:parte_id]==""
    @partes= @partes.where("orders.id=?",params[:orden_id]) unless params[:orden_id].nil? or params[:orden_id]==""
    @partes= @partes.where("families.id=?",params[:familia_id]) unless params[:familia_id].nil? or params[:familia_id]==""
    @partes= @partes.where("genders.id=?",params[:genero_id]) unless params[:genero_id].nil? or params[:genero_id]==""
    @partes= @partes.where("insects.id=?",params[:especie_id]) unless params[:especie_id].nil? or params[:especie_id]==""
  end

  def region
  end

  def especie
    @insectos= Insect.joins(:gender=>[:family=>:order]) 
    @insectos= @insectos.where("orders.id=?",params[:orden_id]) unless params[:orden_id].nil? or params[:orden_id]==""
    @insectos= @insectos.where("families.id=?",params[:familia_id]) unless params[:familia_id].nil? or params[:familia_id]==""
    @insectos= @insectos.where("genders.id=?",params[:genero_id]) unless params[:genero_id].nil? or params[:genero_id]==""
    @insectos= @insectos.where("insects.id=?",params[:especie_id]) unless params[:especie_id].nil? or params[:especie_id]==""
  end
end
