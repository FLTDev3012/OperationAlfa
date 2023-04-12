class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @vehicules = Vehicule.order(:marque).first(6)
  end

  def dashboard
    @vehicules = Vehicule.order(:marque)
  end
end
