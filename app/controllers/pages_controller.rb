class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :services, :about ]

  def home
    @vehicules = Vehicule.order(created_at: :desc).limit(7)
    @vehicule1 = @vehicules[0]  # Le dernier véhicule
    @vehicule2 = @vehicules[1]  # L'avant-dernier
    @vehicule3 = @vehicules[2]  # Le troisième à partir de la fin
    @vehicule4 = @vehicules[3]  # Le quatrième à partir de la fin
    @vehicule5 = @vehicules[4]  # Le cinquième à partir de la fin
    @vehicule6 = @vehicules[5]  # Le sixième à partir de la fin
    @vehicule7 = @vehicules[6]  # Le septième à partir de la fin
  end

  def dashboard
    @vehicules = Vehicule.order(:marque)
    @commentaires = Commentaire.all.order(created_at: :desc)
    @pieces = Piece.all
    @members = Member.all
  end

  def services
  end

  def about
    @flats = Flat.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "flats/info_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "flats/marker")
      }
    end
  end



end
