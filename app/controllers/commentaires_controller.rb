class CommentairesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index new create]

  def index
    @commentaires = Commentaire.all
    @commentaire = Commentaire.new
  end


  def create
    @commentaire = Commentaire.new(commentaire_params)
    if @commentaire.save
      redirect_to commentaires_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def edit
    @commentaire = Commentaire.find(params[:id])
  end

  def update
    @commentaire = Commentaire.find(params[:id])
    @commentaire.update(commentaire_params)
    if @commentaire.save
      flash[:notice] = "Commentaire modifié avec succès !"
      redirect_to dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @commentaire = Commentaire.find(params[:id])
    @commentaire.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def commentaire_params
    params.require(:commentaire).permit(:nom, :prenom, :email, :text, :reponse)
  end

end
