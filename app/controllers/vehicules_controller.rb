class VehiculesController < ApplicationController


  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @vehicules = Vehicule.all

    if params[:marque].present?
      @vehicules = @vehicules.where(marque: params[:marque])
    end

    if params[:carburant].present?
      @vehicules = @vehicules.where(carburant: params[:carburant])
    end

    # Autres filtres ici...

    # Pour afficher la liste de véhicules filtrée dans la vue
    render 'index'

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
    params.require(:vehicule).permit(:marque, :modele, :photo, :boite, :carburant, :kilometrage, :enregistrement, :puissancech, :puissancecv, :taille, :couleur, :prix, :carrosserie, :proprietaires, :dioxy, :portes, :places)
  end

end
