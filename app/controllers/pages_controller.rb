class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @vehicules = Vehicule.order(:created_at).last(5)
  end

  def dashboard
    @vehicules = Vehicule.order(:marque)
    @commentaires = Commentaire.all
    @pieces = Piece.all
    @members = Member.all
  end

end
