class VehiculesController < ApplicationController


  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @vehicules = Vehicule.all
  end

  def show
    @vehicule = Vehicule.find(params[:id])
  end

end
