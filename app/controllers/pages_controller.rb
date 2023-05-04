class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @vehicules = Vehicule.order(:created_at).last(5)
    @vehicule1 = Vehicule.order(:created_at).last
    @vehicule2 = Vehicule.order(:created_at).second_to_last
    @vehicule3 = Vehicule.order(:created_at).third_to_last



  end

  def dashboard
    @vehicules = Vehicule.order(:marque)
    @commentaires = Commentaire.all.order(created_at: :desc)
    @pieces = Piece.all
    @members = Member.all
  end



end
