class WelcomeController < ApplicationController
  def index
  end
  def explore
    @insects=Insect.order(:especie).page params[:page]
  end
end
