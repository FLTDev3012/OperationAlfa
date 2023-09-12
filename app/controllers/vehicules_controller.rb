class VehiculesController < ApplicationController


  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @vehicules = Vehicule.all
    @filtered = false


    if params[:marque].present?
      @vehicules = @vehicules.where(marque: params[:marque])
    end

    if params[:carburant].present?
      @vehicules = @vehicules.where(carburant: params[:carburant])
    end

    if params[:boite].present?
      @vehicules = @vehicules.where(boite: params[:boite])
    end

    if params[:prix_min].present?
      @vehicules = @vehicules.where('prix >= ?', params[:prix_min])
    end

    if params[:prix_max].present?
      @vehicules = @vehicules.where('prix <= ?', params[:prix_max])
    end

    if params[:kilometrage].present?
      @vehicules = @vehicules.where('kilometrage <= ?', params[:kilometrage])
    end

    if @vehicules.blank?
      flash.now[:notice] = "Aucun véhicule ne correspond aux filtres sélectionnés."
    end

    if params[:marque].present? || params[:carburant].present? || params[:prix_min].present? || params[:prix_max].present? || params[:kilometrage].present? || flash.now[:notice].present?
      @filtered = true
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
    params.require(:vehicule).permit(:marque, :modele, :photo, :boite, :carburant, :kilometrage, :enregistrement, :puissancech, :puissancecv, :couleur, :prix, :carrosserie, :description, :vendu, :reservation, pictures: [])
  end

end
