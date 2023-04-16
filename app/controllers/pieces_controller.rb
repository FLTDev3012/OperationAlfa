class PiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @pieces = Piece.all
  end

  def show
    @piece = Piece.find(params[:id])
  end


  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.user = current_user
    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    @piece.update(piece_params)
    @piece.save
    redirect_to piece_path(@piece)
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def piece_params
    params.require(:piece).permit(:marque, :modele, :photo)
  end

end
