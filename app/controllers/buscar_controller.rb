class BuscarController < ApplicationController
  def partes
    params[:partes]
    params[:orden]
    params[:familia]
    params[:genero]
  end

  def region
  end

  def especie
  end
end
