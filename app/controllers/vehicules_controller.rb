class VehiculesController < ApplicationController


  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @vehicules = Vehicule.all
  end

  def show
    @vehicule = Vehicule.find(params[:id])
  end


  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.user = current_user
    if @vehicule.save
      redirect_to vehicule_path(@vehicule)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @vehicule = Vehicule.find(params[:id])
  end

  def update
    @vehicule = Vehicule.find(params[:id])
    @vehicule.update(vehicule_params)
    @vehicule.save
    redirect_to vehicule_path(@vehicule)
  end

  def destroy
    @vehicule = Vehicule.find(params[:id])
    @vehicule.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def vehicule_params
    params.require(:vehicule).permit(:marque, :modele, :photo)
  end

end
